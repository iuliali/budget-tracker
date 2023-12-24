import 'dart:math';

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:touchable/touchable.dart';

import '../../../application/categories/categories_bloc.dart';
import '../../../domain/categories/entities/category.dart';
import '../../core/colors.dart';
import '../../core/routing/router.dart';
import '../../core/widgets/app_bar.dart';
import '../../core/widgets/header.dart';
import '../../core/widgets/menu.dart';
import '../dtos/statistics_dtos.dart';
import '../widgets/circle_painter.dart';

@RoutePage()
class ExpenseStatisticsPage extends StatefulWidget {
  const ExpenseStatisticsPage({super.key});

  @override
  State<ExpenseStatisticsPage> createState() => _ExpenseStatisticsPageState();
}

class _ExpenseStatisticsPageState extends State<ExpenseStatisticsPage> {
  setDummyCategorySpentAmounts(List<Category> categories) {
    final list = List<CategorySpentAmount>.generate(
      categories.length,
      (index) => CategorySpentAmount(
        categoryName: categories[index].name,
        budgetAmount: categories[index].budget?.amount,
        amount: Random().nextInt(50000) / 100,
      ),
    );
    setState(() {
      this.categorySpentAmounts = list;
    });
  }

  CategorySpentAmount? selectedCategory;
  List<CategorySpentAmount> categorySpentAmounts = [];

  Widget pieChart(
      BuildContext context, List<CategorySpentAmount> categorySpentAmounts) {
    return CanvasTouchDetector(
        gesturesToOverride: [GestureType.onTapDown],
        builder: (context) {
          return CustomPaint(
            painter: SectorsPainter(
                context: context,
                categories: categorySpentAmounts,
                selectedCategory: selectedCategory,
                totalAmount: categorySpentAmounts.fold<double>(0,
                    (previousValue, element) => previousValue + element.amount),
                onTap: (category) {
                  setState(() {
                    selectedCategory = category;
                    // set selected category first
                    // categorySpentAmounts.remove(category);
                    // categorySpentAmounts.insert(0, category);
                  });
                }),
            size: const Size(300, 300),
          );
        });
  }

  Widget weeklyChart(
      BuildContext context, List<WeeklySpentAmount> weeklySpentAmounts) {
    var maxWeeklySpentAmount = weeklySpentAmounts
        .map((e) => e.amount)
        .reduce((value, element) => value > element ? value : element);
    return Row(
      children: [
        // build a bar chart with weeklySpentAmounts
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            height: 200,
            child: Row(
              children: [
                // Scale based on maxWeeklySpentAmount
                ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: weeklySpentAmounts.length,
                  itemBuilder: (context, index) {
                    final weeklySpentAmount = weeklySpentAmounts[index];
                    return SizedBox(
                      width: (330 - 70) / weeklySpentAmounts.length,
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 8),
                              decoration: BoxDecoration(
                                color: cWhiteColor,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 100 *
                                        (weeklySpentAmount.amount /
                                            maxWeeklySpentAmount),
                                    decoration: BoxDecoration(
                                      color: cBlueColor,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 16,
                            child: Text(
                              "${weeklySpentAmount.from_date.day} - ${weeklySpentAmount.to_date.day}",
                              style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: cGreyColor),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                // const SizedBox(width: 8),
                Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  width: 35,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "${maxWeeklySpentAmount > 1000 ? (maxWeeklySpentAmount / 1000).toStringAsFixed(1) + "k" : maxWeeklySpentAmount.toStringAsFixed(0)}",
                        style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: cGreyColor),
                      ),
                      Text(
                        "${(maxWeeklySpentAmount / 2) > 1000 ? ((maxWeeklySpentAmount / 2) / 1000).toStringAsFixed(1) + "k" : (maxWeeklySpentAmount / 2).toStringAsFixed(0)}",
                        style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: cGreyColor),
                      ),
                      const Text(
                        "0",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: cGreyColor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    context.read<CategoriesBloc>().add(const CategoriesEvent.fetch());
  }

  @override
  Widget build(BuildContext context) {
    var firstDayOfTheMonth =
        DateTime(DateTime.now().year, DateTime.now().month, 1);
    var lastDayOfTheMonth =
        DateTime(DateTime.now().year, DateTime.now().month + 1, 0);
    var weeklySpentAmounts = [
      WeeklySpentAmount(
        from_date: firstDayOfTheMonth,
        to_date: DateTime(DateTime.now().year, DateTime.now().month, 7),
        amount: Random().nextDouble() * 1000,
      ),
      WeeklySpentAmount(
        from_date: DateTime(DateTime.now().year, DateTime.now().month, 8),
        to_date: DateTime(DateTime.now().year, DateTime.now().month, 14),
        amount: Random().nextDouble() * 10000,
      ),
      WeeklySpentAmount(
        from_date: DateTime(DateTime.now().year, DateTime.now().month, 15),
        to_date: DateTime(DateTime.now().year, DateTime.now().month, 21),
        amount: Random().nextDouble() * 1000,
      ),
      WeeklySpentAmount(
        from_date: DateTime(DateTime.now().year, DateTime.now().month, 22),
        to_date: DateTime(DateTime.now().year, DateTime.now().month, 28),
        amount: Random().nextDouble() * 10000,
      )
    ];
    if (lastDayOfTheMonth.day != 28) {
      weeklySpentAmounts.add(
        WeeklySpentAmount(
          from_date: DateTime(DateTime.now().year, DateTime.now().month, 29),
          to_date: lastDayOfTheMonth,
          amount: Random().nextDouble() * 100,
        ),
      );
    }

    return BlocConsumer<CategoriesBloc, CategoriesState>(
      listener: (context, state) {
        state.failureOrCategories.fold(
          () => {},
          (a) => a.fold(
            (l) => {},
            (r) => setDummyCategorySpentAmounts(r),
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
                      title: "Expenses",
                      subtitle: "View how you spent your money!"),
                ),
                categorySpentAmounts.isEmpty
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
                                          "Spent",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: cBlackColor),
                                        ),
                                        Text(
                                          "${categorySpentAmounts.fold<double>(0, (previousValue, element) => previousValue + element.amount).toStringAsFixed(2)} RON",
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
                                      ? pieChart(context, categorySpentAmounts
                                  )
                                      : weeklyChart(
                                          context, weeklySpentAmounts),
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
                            itemCount: categorySpentAmounts.length,
                            itemBuilder: (context, index) {
                              final categorySpentAmount =
                                  categorySpentAmounts[index];
                              return ListTile(
                                onTap: () {
                                  setState(() {
                                    selectedCategory = categorySpentAmount;
                                  });
                                },
                                title: Text(
                                  categorySpentAmount.categoryName.getOrCrash(),
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight:
                                        selectedCategory?.categoryName ==
                                                categorySpentAmount.categoryName
                                            ? FontWeight.bold
                                            : FontWeight.normal,
                                  ),
                                ),
                                leading: Container(
                                  width: 40,
                                  height: 40,
                                  padding: const EdgeInsets.all(5),
                                  child: categorySpentAmount.isAllInclusive
                                      ? const Icon(Icons.all_inclusive)
                                      : CircularProgressIndicator(
                                          strokeWidth: 5,
                                          value: categorySpentAmount.percentage,
                                          backgroundColor: cGreyColor,
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            categorySpentAmount.isLeft
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
                                            "${categorySpentAmount.amount} RON",
                                            style: const TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color: cGreyColor),
                                          ),
                                          categorySpentAmount.isAllInclusive
                                              ? const SizedBox()
                                              : categorySpentAmount.isOverspent
                                                  ? Text(
                                                      "Overspent ${categorySpentAmount.overspentAmount.toStringAsFixed(2)}",
                                                      style: const TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: cRedColor,
                                                      ),
                                                    )
                                                  : Text(
                                                      "Left ${categorySpentAmount.leftAmount.toStringAsFixed(2)}",
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
