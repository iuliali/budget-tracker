import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:budget_tracker/domain/categories/value_objects.dart';
import 'package:budget_tracker/injection.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:collection/collection.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/categories/categories_bloc.dart';
import '../../../domain/categories/entities/category.dart';
import '../../core/colors.dart';
import '../../core/widgets/app_bar.dart';
import '../../core/widgets/header.dart';
import '../../core/widgets/menu.dart';
import '../dtos/statistics_dtos.dart';
import '../widgets/pie_chart.dart';
import '../widgets/weekly_chart.dart';

@RoutePage()
class IncomeStatisticsPage extends StatefulWidget {
  const IncomeStatisticsPage({super.key});

  @override
  State<IncomeStatisticsPage> createState() => _IncomeStatisticsPageState();
}

class _IncomeStatisticsPageState extends State<IncomeStatisticsPage> {
  DateTime selectedDate = DateTime.now();

  CategoryStat? selectedCategory;
  List<CategoryStat> categoryStats = [];
  List<WeeklyStat> weeklyStats = [];

  Future getWeeklyStats(Dio client) async {
    final resp = await client.get(
        '/statistics/week-incomes-by-month/${selectedDate.year}-${selectedDate.month}/{currency}');
    final data = resp.data as Map<String, dynamic>;
    final lastDay = DateTime(selectedDate.year, selectedDate.month + 1, 0).day;
    final list = List<WeeklyStat>.generate(
      data.length,
          (index) => WeeklyStat(
        from_date: (index*7 + 1).toString(),
        to_date: (index*7+7 > lastDay ? lastDay : index*7+7).toString(),
        amount: double.tryParse(data.values.elementAt(index).toString()) ?? 0.0,
      ),
    );
    setState(() {
      weeklyStats = list;
    });
  }

  Future getMonthlyStats(Dio client, List<Category> categories) async {
    final resp = await client.get(
        '/statistics/month-incomes/${selectedDate.year}-${selectedDate.month}/{currency}');
    final data = resp.data as Map<String, dynamic>;
    final categoryStats = data["categories"] as Map<String, dynamic>;
    final list = List<CategoryStat>.generate(
      categoryStats.length,
      (index) => CategoryStat(
        categoryName: CategoryName(categoryStats.keys.elementAt(index)),
        budgetAmount: categories
            .firstWhereOrNull((element) =>
                element.name == categoryStats.keys.elementAt(index))
            ?.budget
            ?.amount,
        amount:
            double.tryParse(categoryStats.values.elementAt(index).toString()) ??
                0.0,
      ),
    );
    list.sort((a, b) => b.amount.compareTo(a.amount));
    // filter out categories with 0 amount
    list.removeWhere((element) => element.amount == 0.0);
    setState(() {
      this.categoryStats = list;
    });
  }

  Future getStats(List<Category> categories) async {
    Dio client = getIt<Dio>();
    Future task1 = getWeeklyStats(client);
    Future task2 = getMonthlyStats(client, categories);
    await Future.wait([task1, task2]);
  }

  @override
  void initState() {
    super.initState();
    context.read<CategoriesBloc>().add(const CategoriesEvent.fetch());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CategoriesBloc, CategoriesState>(
      listener: (context, state) {
        state.failureOrCategories.fold(
          () => {},
          (a) => a.fold(
            (l) => {},
            (r) => getStats(r),
          ),
        );
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          appBar: generateAppBarWidget(context),
          drawer: const Drawer(child: MenuWidget()),
          body: SafeArea(
            child: ListView(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32),
                  child: HeaderWidget(
                      title: "Incomes", subtitle: "View your incomes sources!"),
                ),
                categoryStats.isEmpty
                    ? const SizedBox(
                        height: 300,
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      )
                    : Column(
                        children: <Widget>[
                          const SizedBox(height: 16),
                          // Total spent amount
                          Padding(
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
                                          "Recieved",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: cBlackColor),
                                        ),
                                        Text(
                                          "${categoryStats.fold<double>(0, (previousValue, element) => previousValue + element.amount).toStringAsFixed(2)} RON",
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
                          const SizedBox(height: 16),
                          SizedBox(
                            height: 350,
                            child: Swiper(
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  height: 350,
                                  decoration: BoxDecoration(
                                    color: cWhiteColor,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: index == 0
                                      ? PieChart(
                                          categoriesStats: categoryStats,
                                          selectedCategory: selectedCategory,
                                          onTap: (category) {
                                            setState(() {
                                              selectedCategory = category;
                                            });
                                          },
                                          normalColor: cBlueColor,
                                        )
                                      : weeklyStats.isEmpty
                                          ? const SizedBox()
                                          : WeeklyChart(
                                              weeklyStats: weeklyStats),
                                );
                              },
                              itemCount: 2,
                              viewportFraction: 0.8,
                              scale: 0.9,
                            ),
                          ),
                          const SizedBox(height: 16),
                          ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: categoryStats.length,
                            itemBuilder: (context, index) {
                              final categoryStat = categoryStats[index];
                              return ListTile(
                                onTap: () {
                                  setState(() {
                                    selectedCategory = categoryStat;
                                  });
                                },
                                title: Text(
                                  categoryStat.categoryName.getOrCrash(),
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight:
                                        selectedCategory?.categoryName ==
                                                categoryStat.categoryName
                                            ? FontWeight.bold
                                            : FontWeight.normal,
                                  ),
                                ),
                                leading: Container(
                                  width: 40,
                                  height: 40,
                                  padding: const EdgeInsets.all(5),
                                  child: categoryStat.isAllInclusive
                                      ? const Icon(Icons.all_inclusive)
                                      : CircularProgressIndicator(
                                          strokeWidth: 5,
                                          value: categoryStat.percentage,
                                          backgroundColor: cGreyColor,
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            categoryStat.isLeft
                                                ? cLightBlueColor
                                                : cRedColor,
                                          ),
                                        ),
                                ),
                                trailing: IntrinsicWidth(
                                  child: Row(
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            "${categoryStat.amount} RON",
                                            style: const TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color: cGreyColor),
                                          ),
                                          categoryStat.isAllInclusive
                                              ? const SizedBox()
                                              : categoryStat.isOverspent
                                                  ? Text(
                                                      "Overspent ${categoryStat.overspentAmount.toStringAsFixed(2)}",
                                                      style: const TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: cRedColor,
                                                      ),
                                                    )
                                                  : Text(
                                                      "Left ${categoryStat.leftAmount.toStringAsFixed(2)}",
                                                      style: const TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: cLightBlueColor,
                                                      ),
                                                    )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                          const SizedBox(height: 16),
                        ],
                      ),
              ],
            ),
          ),
        );
      },
    );
  }
}
