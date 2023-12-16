import 'dart:math';

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/categories/categories_bloc.dart';
import '../../../domain/categories/entities/category.dart';
import '../../../domain/categories/value_objects.dart';
import '../../core/colors.dart';
import '../../core/routing/router.dart';
import '../../core/widgets/app_bar.dart';
import '../../core/widgets/header.dart';
import '../../core/widgets/menu.dart';

class CategorySpentAmount {
  final CategoryName categoryName;
  final BudgetAmount? budgetAmount;
  final double amount;

  const CategorySpentAmount({
    required this.categoryName,
    required this.budgetAmount,
    required this.amount,
  });

  bool get isOverspent =>
      budgetAmount != null && budgetAmount!.getOrCrash() < amount;
  bool get isLeft =>
      budgetAmount != null && budgetAmount!.getOrCrash() > amount;
  bool get isAllInclusive => budgetAmount == null;

  double get percentage =>
      budgetAmount != null ? (amount / budgetAmount!.getOrCrash()) : 0;
  double get overspentAmount =>
      budgetAmount != null ? (amount - budgetAmount!.getOrCrash()) : 0;
  double get leftAmount =>
      budgetAmount != null ? (budgetAmount!.getOrCrash() - amount) : 0;
}

class WeeklySpentAmount {
  final DateTime from_date;
  final DateTime to_date;
  final double amount;

  const WeeklySpentAmount({
    required this.from_date,
    required this.to_date,
    required this.amount,
  });
}

@RoutePage()
class ExpenseStatisticsPage extends StatelessWidget {
  const ExpenseStatisticsPage({super.key});

  List<CategorySpentAmount> dummyCategorySpentAmounts(
      List<Category> categories) {
    return List<CategorySpentAmount>.generate(
      categories.length,
          (index) => CategorySpentAmount(
        categoryName: categories[index].name,
        budgetAmount: categories[index].budget?.amount,
        amount: Random().nextInt(50000) / 100,
      ),
    );
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

    var maxWeeklySpentAmount = weeklySpentAmounts
        .map((e) => e.amount)
        .reduce((value, element) => value > element ? value : element);

    return BlocBuilder<CategoriesBloc, CategoriesState>(
      builder: (context, state) {
        final categories =
        state.failureOrCategories.getOrElse(() => right([])).fold(
              (l) => <Category>[],
              (r) => r,
        );

        final categorySpentAmounts = dummyCategorySpentAmounts(categories);
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
                      title: "Statistics",
                      subtitle: "View how you spent your money!"),
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
                    Row(
                      children: [
                        // build a bar chart with weeklySpentAmounts
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16),
                            height: 200,
                            child: Row(
                              children: [
                                // Scale based on maxWeeklySpentAmount
                                ListView.builder(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: weeklySpentAmounts.length,
                                  itemBuilder: (context, index) {
                                    final weeklySpentAmount =
                                    weeklySpentAmounts[index];
                                    return Container(
                                      width: (MediaQuery.of(context)
                                          .size
                                          .width -
                                          70) /
                                          weeklySpentAmounts.length,
                                      child: Column(
                                        children: [
                                          Expanded(
                                            child: Container(
                                              margin: const EdgeInsets
                                                  .symmetric(
                                                  horizontal: 8,
                                                  vertical: 8),
                                              decoration: BoxDecoration(
                                                color: cWhiteColor,
                                                borderRadius:
                                                BorderRadius.circular(
                                                    8),
                                              ),
                                              child: Column(
                                                mainAxisAlignment:
                                                MainAxisAlignment.end,
                                                children: [
                                                  Container(
                                                    height: 100 *
                                                        (weeklySpentAmount
                                                            .amount /
                                                            maxWeeklySpentAmount),
                                                    decoration:
                                                    BoxDecoration(
                                                      color: cBlueColor,
                                                      borderRadius:
                                                      BorderRadius
                                                          .circular(
                                                          8),
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
                                                  fontSize: 16,
                                                  fontWeight:
                                                  FontWeight.bold,
                                                  color: cGreyColor),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                                const SizedBox(width: 8),
                                Container(
                                  margin:
                                  const EdgeInsets.only(bottom: 16),
                                  width: 26,
                                  child: Column(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                    ),
                    const SizedBox(height: 16),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 32),
                      child: Text("Spends by category",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
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
                          onTap: () {},
                          title: Text(categorySpentAmount.categoryName
                              .getOrCrash()),
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
                                    ? cGreenColor
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
                                        color: cGreenColor,
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
