import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
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
import '../widgets/month_selector.dart';

class CategoryMonthlyAmount {
  final CategoryName categoryName;
  final BudgetAmount? budgetAmount;
  final double amount;

  const CategoryMonthlyAmount({
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
class StatisticsPage extends StatefulWidget {
  const StatisticsPage({super.key});

  @override
  State<StatisticsPage> createState() => _StatisticsPageState();
}

class _StatisticsPageState extends State<StatisticsPage> {
  var selectedMonth = DateTime.now();

  void _onMonthChanged(DateTime month) {
    setState(() {
      selectedMonth = month;
    });
  }

  @override
  Widget build(BuildContext context) {
    final categorySpentAmount = CategoryMonthlyAmount(
      categoryName: CategoryName("Food"),
      budgetAmount: BudgetAmount(100),
      amount: 50,
    );
    final categoryIncomeAmount = CategoryMonthlyAmount(
      categoryName: CategoryName("Salary"),
      budgetAmount: null,
      amount: 1000,
    );

    return BlocBuilder<CategoriesBloc, CategoriesState>(
      builder: (context, state) {
        List<Category> categories =
            state.failureOrCategories.fold(() => <Category>[], (a) => a.fold((l) => <Category>[], (r) => r));

        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          appBar: generateAppBarWidget(context),
          drawer: const Drawer(child: MenuWidget()),
          body: GestureDetector(
            // onHorizontalDragUpdate: (details) {
            //   int sensitivity = 10;
            //   if (details.delta.dx > sensitivity) {
            //     _onMonthChanged(DateTime(selectedMonth.year, selectedMonth.month - 1, 1));
            //   } else if (details.delta.dx < -sensitivity) {
            //     _onMonthChanged(DateTime(selectedMonth.year, selectedMonth.month + 1, 1));
            //   }
            // },
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
                                                "${categorySpentAmount.amount.toStringAsFixed(2)} RON",
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
                                ListTile(
                                  onTap: () {},
                                  title: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          categorySpentAmount.categoryName.getOrCrash()),
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
                                    child: categorySpentAmount.isAllInclusive
                                        ? const Icon(Icons.all_inclusive)
                                        : CircularProgressIndicator(
                                            strokeWidth: 5,
                                            value: categorySpentAmount.percentage,
                                            backgroundColor: cGreyColor,
                                            valueColor: AlwaysStoppedAnimation<Color>(
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
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.end,
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
                                                          fontWeight: FontWeight.bold,
                                                          color: cRedColor,
                                                        ),
                                                      )
                                                    : Text(
                                                        "Left ${categorySpentAmount.leftAmount.toStringAsFixed(2)}",
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
                                              "Income",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: cBlackColor),
                                            ),
                                            Text(
                                              "${categoryIncomeAmount.amount.toStringAsFixed(2)} RON",
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
                              ListTile(
                                onTap: () {},
                                title: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        categoryIncomeAmount.categoryName.getOrCrash()),
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
                                  child: categoryIncomeAmount.isAllInclusive
                                      ? const Icon(Icons.all_inclusive)
                                      : CircularProgressIndicator(
                                    strokeWidth: 5,
                                    value: categorySpentAmount.percentage,
                                    backgroundColor: cGreyColor,
                                    valueColor: AlwaysStoppedAnimation<Color>(
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
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            "${categoryIncomeAmount.amount} RON",
                                            style: const TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color: cGreyColor),
                                          ),
                                          categoryIncomeAmount.isAllInclusive
                                              ? const SizedBox()
                                              : categoryIncomeAmount.isOverspent
                                              ? Text(
                                            "Overspent ${categoryIncomeAmount.overspentAmount.toStringAsFixed(2)}",
                                            style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: cRedColor,
                                            ),
                                          )
                                              : Text(
                                            "Left ${categoryIncomeAmount.leftAmount.toStringAsFixed(2)}",
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
