import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/categories/categories_bloc.dart';
import '../../../domain/categories/entities/category.dart';
import '../../../domain/categories/value_objects.dart';
import '../../../injection.dart';
import '../../core/colors.dart';
import '../../core/routing/router.dart';
import '../../core/widgets/app_bar.dart';
import '../../core/widgets/header.dart';
import '../../core/widgets/menu.dart';
import '../dtos/statistics_dtos.dart';
import '../widgets/month_selector.dart';


@RoutePage()
class StatisticsPage extends StatefulWidget {
  const StatisticsPage({super.key});

  @override
  State<StatisticsPage> createState() => _StatisticsPageState();
}

class _StatisticsPageState extends State<StatisticsPage> {
  var selectedMonth = DateTime.now();

  double totalSpentAmount = 0;
  double totalIncomeAmount = 0;

  List<Category> categories = [];

  CategoryStat? categoryExpenseStat;
  CategoryStat? categoryIncomeStat;

  Future getMTotalExpenses(Dio client, List<Category> categories) async {
    final resp = await client.get(
        '/statistics/month-expenses/${selectedMonth.year}-${selectedMonth.month}/{currency}');
    final data = resp.data as Map<String, dynamic>;
    final categoriesTotal = data["total"] as Map<String, dynamic>;
    final categoryStats = data["categories"] as Map<String, dynamic>;
    final list = List<CategoryStat>.generate(
      categoryStats.length,
          (index) => CategoryStat(
        categoryName: CategoryName(categoryStats.keys.elementAt(index)),
        budgetAmount: categories.firstWhereOrNull((element) => element.name.getOrElse("") == categoryStats.keys.elementAt(index))?.budget?.amount,
        amount: double.tryParse(categoryStats.values.elementAt(index).toString()) ?? 0.0,
      ),
    );
    setState(() {
      totalSpentAmount = double.tryParse(categoriesTotal["sum"].toString()) as double;
      categoryExpenseStat = list.reduce((value, element) => value.amount > element.amount ? value : element);
    });
  }

  Future getTotalIncomes(Dio client, List<Category> categories) async {
    final resp = await client.get(
        '/statistics/month-incomes/${selectedMonth.year}-${selectedMonth.month}/{currency}');
    final data = resp.data as Map<String, dynamic>;
    final categoriesTotal = data["total"] as Map<String, dynamic>;
    final categoryStats = data["categories"] as Map<String, dynamic>;
    final list = List<CategoryStat>.generate(
      categoryStats.length,
          (index) => CategoryStat(
        categoryName: CategoryName(categoryStats.keys.elementAt(index)),
        budgetAmount: categories.firstWhereOrNull((element) => element.name.getOrElse("") == categoryStats.keys.elementAt(index))?.budget?.amount,
        amount: double.tryParse(categoryStats.values.elementAt(index).toString()) ?? 0.0,
      ),
    );
    setState(() {
      totalIncomeAmount = double.tryParse(categoriesTotal["sum"].toString()) as double;
      categoryIncomeStat = list.reduce((value, element) => value.amount > element.amount ? value : element);
    });
  }

  void _onMonthChanged(DateTime month) {
    setState(() {
      selectedMonth = month;
    });
    getStats();
  }

  Future getStats() async {
    final client = getIt<Dio>();
    Future task1 = getMTotalExpenses(client, categories);
    Future task2 = getTotalIncomes(client, categories);
    await Future.wait([task1, task2]);
  }

  void setCategories(List<Category> categories) {
    setState(() {
      this.categories = categories;
    });
    getStats();
  }

  @override
  void initState() {
    super.initState();
    context.read<CategoriesBloc>().add(const CategoriesEvent.fetch());
  }

  @override
  Widget build(BuildContext context) {

    const double minMainDisplacement = 50;
    const double maxCrossRatio = 0.75;
    const double minVelocity = 300;

    DragStartDetails? panStartDetails;
    DragUpdateDetails? panUpdateDetails;

    return BlocConsumer<CategoriesBloc, CategoriesState>(
      listener: (context, state) {
        state.failureOrCategories.fold(() => null, (a) => a.fold((l) => null, (r) => setCategories(r)));
      },
      builder: (context, state) {
        List<Category> categories =
            state.failureOrCategories.fold(() => <Category>[], (a) => a.fold((l) => <Category>[], (r) => r));
        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          appBar: generateAppBarWidget(context),
          drawer: const Drawer(child: MenuWidget()),
          body: GestureDetector(
            onPanStart: (startDetails) => panStartDetails = startDetails,
            onPanUpdate: (updateDetails) => panUpdateDetails = updateDetails,
            onPanEnd: (endDetails) {
              if (panStartDetails == null || panUpdateDetails == null) return;

              double dx = panUpdateDetails!.globalPosition.dx -
                  panStartDetails!.globalPosition.dx;
              double dy = panUpdateDetails!.globalPosition.dy -
                  panStartDetails!.globalPosition.dy;

              int panDurationMiliseconds =
                  panUpdateDetails!.sourceTimeStamp!.inMilliseconds -
                      panStartDetails!.sourceTimeStamp!.inMilliseconds;

              double mainDis, crossDis, mainVel;
              bool isHorizontalMainAxis = dx.abs() > dy.abs();

              if (isHorizontalMainAxis) {
                mainDis = dx.abs();
                crossDis = dy.abs();
              } else {
                mainDis = dy.abs();
                crossDis = dx.abs();
              }

              mainVel = 1000 * mainDis / panDurationMiliseconds;

              // if (mainDis < minMainDisplacement) return;
              // if (crossDis > maxCrossRatio * mainDis) return;
              // if (mainVel < minVelocity) return;

              if (mainDis < minMainDisplacement) {
                debugPrint(
                    "SWIPE DEBUG | Displacement too short. Real: $mainDis - Min: $minMainDisplacement");
                return;
              }
              if (crossDis > maxCrossRatio * mainDis) {
                debugPrint(
                    "SWIPE DEBUG | Cross axis displacemnt bigger than limit. Real: $crossDis - Limit: ${mainDis * maxCrossRatio}");
                return;
              }
              if (mainVel < minVelocity) {
                debugPrint(
                    "SWIPE DEBUG | Swipe velocity too slow. Real: $mainVel - Min: $minVelocity");
                return;
              }

              // dy < 0 => UP -- dx > 0 => RIGHT
              if (isHorizontalMainAxis) {
                if (dx > 0) {
                  _onMonthChanged(DateTime(selectedMonth.year, selectedMonth.month - 1, 1));
                } else {
                  _onMonthChanged(DateTime(selectedMonth.year, selectedMonth.month + 1, 1));
                }
              }
            },
            child: SafeArea(
              child: ListView(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    child: HeaderWidget(
                        title: "Statistics",
                        subtitle: "View your money flow!"),
                  ),
                  categories.isEmpty
                      ? Container(
                          margin: const EdgeInsets.only(top: 40),
                          child: Column(children: [
                            const Text(
                              "No categories found!",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            const Text("Add a category to see statistics"),
                            const SizedBox(height: 16),
                            FilledButton(
                                child: const Text(
                                  "Go to Categories",
                                  style: TextStyle(
                                      color: cWhiteColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                onPressed: () {
                                  context.router.replace(const CategoriesRoute());
                                })
                          ]),
                        )
                      : Column(
                        children: [
                          // change month with two arrows left and right
                          MonthSelector(
                            currentMonth: selectedMonth,
                            onChanged: (month) {
                              _onMonthChanged(month);
                            },
                          ),

                          // Total spent amount
                          Column(
                              children: <Widget>[
                                const SizedBox(height: 16),
                                // Total spent amount
                                GestureDetector(
                                  onTap: () {
                                    context.router.push(const ExpenseStatisticsRoute());
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 32),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 16),
                                            height: 80,
                                            decoration: BoxDecoration(
                                              color: cWhiteColor,
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                const Text(
                                                  "Spent",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.bold,
                                                      color: cBlackColor),
                                                ),
                                                Text(
                                                  "${totalSpentAmount.toStringAsFixed(2)} RON",
                                                  style: const TextStyle(
                                                      fontSize: 24,
                                                      fontWeight: FontWeight.bold,
                                                      color: cBlackColor),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 16),
                                categoryExpenseStat == null
                                    ? SizedBox()
                                    : ListTile(
                                  onTap: () {},
                                  title: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          categoryExpenseStat!.categoryName.getOrCrash()),
                                      const Text(
                                        "Top Spent Category",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                            color: cBlackColor),
                                      ),
                                    ],
                                  ),
                                  leading: Container(
                                    width: 40,
                                    height: 40,
                                    padding: const EdgeInsets.all(5),
                                    child: categoryExpenseStat!.isAllInclusive
                                        ? const Icon(Icons.all_inclusive)
                                        : CircularProgressIndicator(
                                            strokeWidth: 5,
                                            value: categoryExpenseStat!.percentage,
                                            backgroundColor: cGreyColor,
                                            valueColor: AlwaysStoppedAnimation<Color>(
                                              categoryExpenseStat!.isLeft
                                                  ? cGreenColor
                                                  : cRedColor,
                                            ),
                                          ),
                                  ),
                                  trailing: IntrinsicWidth(
                                    child: Row(
                                      children: [
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              "${categoryExpenseStat!.amount} RON",
                                              style: const TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: cGreyColor),
                                            ),
                                            categoryExpenseStat!.isAllInclusive
                                                ? const SizedBox()
                                                : categoryExpenseStat!.isOverspent
                                                    ? Text(
                                                        "Overspent ${categoryExpenseStat!.overspentAmount.toStringAsFixed(2)}",
                                                        style: const TextStyle(
                                                          fontSize: 12,
                                                          fontWeight: FontWeight.bold,
                                                          color: cRedColor,
                                                        ),
                                                      )
                                                    : Text(
                                                        "Left ${categoryExpenseStat!.leftAmount.toStringAsFixed(2)}",
                                                        style: const TextStyle(
                                                          fontSize: 12,
                                                          fontWeight: FontWeight.bold,
                                                          color: cGreenColor,
                                                        ),
                                                      )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 16),
                              ],
                            ),
                          Column(
                            children: <Widget>[
                              const SizedBox(height: 16),
                              // Total spent amount
                              GestureDetector(
                                onTap: () {
                                  context.router.push(const IncomeStatisticsRoute());
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 32),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 16),
                                          height: 80,
                                          decoration: BoxDecoration(
                                            color: cWhiteColor,
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: [
                                              const Text(
                                                "Income",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                    color: cBlackColor),
                                              ),
                                              Text(
                                                "${totalIncomeAmount.toStringAsFixed(2)} RON",
                                                style: const TextStyle(
                                                    fontSize: 24,
                                                    fontWeight: FontWeight.bold,
                                                    color: cBlackColor),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 16),
                              categoryIncomeStat == null
                                  ? const SizedBox()
                                  : ListTile(
                                onTap: () {},
                                title: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        categoryIncomeStat!.categoryName.getOrCrash()),
                                    const Text(
                                      "Top Income Category",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                          color: cBlackColor),
                                    ),
                                  ],
                                ),
                                leading: Container(
                                  width: 40,
                                  height: 40,
                                  padding: const EdgeInsets.all(5),
                                  child: categoryIncomeStat!.isAllInclusive
                                      ? const Icon(Icons.all_inclusive)
                                      : CircularProgressIndicator(
                                    strokeWidth: 5,
                                    value: categoryIncomeStat!.percentage,
                                    backgroundColor: cGreyColor,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      categoryIncomeStat!.isLeft
                                          ? cGreenColor
                                          : cRedColor,
                                    ),
                                  ),
                                ),
                                trailing: IntrinsicWidth(
                                  child: Row(
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            "${categoryIncomeStat!.amount} RON",
                                            style: const TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color: cGreyColor),
                                          ),
                                          categoryIncomeStat!.isAllInclusive
                                              ? const SizedBox()
                                              : categoryIncomeStat!.isOverspent
                                              ? Text(
                                            "Overspent ${categoryIncomeStat!.overspentAmount.toStringAsFixed(2)}",
                                            style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: cRedColor,
                                            ),
                                          )
                                              : Text(
                                            "Left ${categoryIncomeStat!.leftAmount.toStringAsFixed(2)}",
                                            style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: cGreenColor,
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 16),
                            ],
                          ),
                        ],
                      ),

                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
