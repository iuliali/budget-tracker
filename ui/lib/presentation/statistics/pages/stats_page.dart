import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

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

import 'package:toggle_switch/toggle_switch.dart';

import '../widgets/year_selector.dart';

@RoutePage()
class StatisticsPage extends StatefulWidget {
  const StatisticsPage({super.key});

  @override
  State<StatisticsPage> createState() => _StatisticsPageState();
}

enum TimeFrame { monthly, yearly }

class _StatisticsPageState extends State<StatisticsPage> {
  var selectedMonth = DateTime.now();
  var selectedYear = DateTime.now();
  var timeFrame = TimeFrame.monthly;
  var currency = "RON"; // TODO: get from user DETAILS
  var inFuture = false;

  double totalSpentAmount = 0;
  double totalIncomeAmount = 0;

  List<Category> categories = [];

  CategoryStat? categoryExpenseStatMonth;
  CategoryStat? categoryIncomeStatMonth;

  CategoryStat? categoryExpenseStatYear;
  CategoryStat? categoryIncomeStatYear;
  get yearly => timeFrame == TimeFrame.yearly;

  Future getMonthlyTotalExpenses(Dio client, List<Category> categories) async {
    print(currency);
    assert(timeFrame == TimeFrame.monthly);
    var formattedDate = DateFormat('yyyy-MM').format(selectedMonth);
    String path = '/statistics/month-expenses/${formattedDate}/${currency}';
    final resp =
        await client.get(path, queryParameters: {"currency": currency});
    final data = resp.data as Map<String, dynamic>;
    final categoriesTotal = data["total"] as Map<String, dynamic>;
    final categoryStats = data["categories"] as Map<String, dynamic>;
    final list = List<CategoryStat>.generate(
      categoryStats.length,
      (index) => CategoryStat(
        categoryName: CategoryName(categoryStats.keys.elementAt(index)),
        budgetAmount: categoryStats.values.elementAt(index)["budget"] >= 0
            ? BudgetAmount.fromString(
                categoryStats.values.elementAt(index)["budget"].toString())
            : null,
        amount: double.tryParse(
                categoryStats.values.elementAt(index)["sum"].toString()) ??
            0.0,
      ),
    );
    setState(() {
      totalSpentAmount =
          double.tryParse(categoriesTotal["sum"].toString()) as double;
      categoryExpenseStatMonth = list.reduce(
          (value, element) => value.amount > element.amount ? value : element);
    });
  }

  Future getYearlyTotalExpenses(Dio client, List<Category> categories) async {
    assert(timeFrame == TimeFrame.yearly);
    String path = '/statistics/year-expenses/${selectedYear.year}/${currency}';
    final resp = await client.get(path);
    final data = resp.data as Map<String, dynamic>;
    final categoriesTotal = data["total"] as Map<String, dynamic>;
    final categoryStats = data["categories"] as Map<String, dynamic>;
    final list = List<CategoryStat>.generate(
      categoryStats.length,
      (index) => CategoryStat(
          categoryName: CategoryName(categoryStats.keys.elementAt(index)),
          budgetAmount: null,
          amount: double.tryParse(
                  categoryStats.values.elementAt(index)["sum"].toString()) ??
              0.0),
    );
    setState(() {
      totalSpentAmount =
          double.tryParse(categoriesTotal["sum"].toString()) as double;
      categoryExpenseStatYear =
          list.reduce((a, b) => a.amount > b.amount ? a : b);
    });
  }

  Future getMonthlyTotalIncomes(Dio client, List<Category> categories) async {
    var formattedDate = DateFormat('yyyy-MM').format(selectedMonth);
    final resp = await client
        .get('/statistics/month-incomes/${formattedDate}/{currency}', queryParameters: {"currency": currency});
    final data = resp.data as Map<String, dynamic>;
    final categoriesTotal = data["total"] as Map<String, dynamic>;
    final categoryStats = data["categories"] as Map<String, dynamic>;
    print(categoriesTotal);
    final list = List<CategoryStat>.generate(
      categoryStats.length,
      (index) => CategoryStat(
        categoryName: CategoryName(categoryStats.keys.elementAt(index)),
        budgetAmount: categories
            .firstWhereOrNull((element) =>
                element.name.getOrElse("") ==
                categoryStats.keys.elementAt(index))
            ?.budget
            ?.amount,
        amount:
            double.tryParse(categoryStats.values.elementAt(index).toString()) ??
                0.0,
      ),
    );
    setState(() {
      totalIncomeAmount =
          double.tryParse(categoriesTotal["sum"].toString()) as double;
      categoryIncomeStatMonth = list.reduce(
          (value, element) => value.amount > element.amount ? value : element);
    });
  }

  Future getYearlyTotalIncomes(Dio client, List<Category> categories) async {
    final resp = await client
        .get('/statistics/year-incomes/${selectedYear.year}/${currency}');
    final data = resp.data as Map<String, dynamic>;
    final categoriesTotal = data["total"] as Map<String, dynamic>;
    final categoryStats = data["categories"] as Map<String, dynamic>;
    final list = List<CategoryStat>.generate(
      categoryStats.length,
      (index) => CategoryStat(
        categoryName: CategoryName(categoryStats.keys.elementAt(index)),
        budgetAmount: null,
        amount: double.tryParse(
                categoryStats.values.elementAt(index)["sum"].toString()) ??
            0.0,
      ),
    );
    setState(() {
      totalIncomeAmount =
          double.tryParse(categoriesTotal["sum"].toString()) as double;
      categoryIncomeStatYear =
          list.reduce((a, b) => a.amount > b.amount ? a : b);
    });
  }

  void _onMonthChanged(DateTime month) {
    setState(() {
      selectedMonth = month;
    });
    if (selectedMonth.year >= DateTime.now().year &&
        selectedMonth.month > DateTime.now().month) {
      inFuture = true;
      return;
    } else {
      inFuture = false;
    }
    getStats();
  }

  void _onYearChanged(DateTime year) {
    setState(() {
      selectedYear = year;
    });
    if (selectedYear.year > DateTime.now().year) {
      inFuture = true;
      return;
    } else {
      inFuture = false;
    }
    getStats();
  }

  Future getStats() async {
    final client = getIt<Dio>();
    Future task1 = timeFrame == TimeFrame.monthly
        ? getMonthlyTotalExpenses(client, categories)
        : getYearlyTotalExpenses(client, categories);
    Future task2 = timeFrame == TimeFrame.monthly
        ? getMonthlyTotalIncomes(client, categories)
        : getYearlyTotalIncomes(client, categories);
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
        state.failureOrCategories.fold(
            () => null, (a) => a.fold((l) => null, (r) => setCategories(r)));
      },
      builder: (context, state) {
        List<Category> categories = state.failureOrCategories.fold(
            () => <Category>[], (a) => a.fold((l) => <Category>[], (r) => r));
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

              int panDurationMilliseconds =
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

              mainVel = 1000 * mainDis / panDurationMilliseconds;

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
                  if (timeFrame == TimeFrame.monthly) {
                    _onMonthChanged(DateTime(
                        selectedMonth.year, selectedMonth.month - 1, 1));
                  } else {
                    _onYearChanged(DateTime(selectedYear.year - 1, 1, 1));
                  }
                } else {
                  if (timeFrame == TimeFrame.monthly) {
                    _onMonthChanged(DateTime(
                        selectedMonth.year, selectedMonth.month + 1, 1));
                  } else {
                    _onYearChanged(DateTime(selectedYear.year + 1, 1, 1));
                  }
                }
              }
            },
            child: SafeArea(
              child: ListView(
                children: [
                  Stack(
                    children: [
                      Row(children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 32),
                          child: HeaderWidget(
                              title: "Statistics",
                              subtitle: "View your money flow!"),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: ElevatedButton.icon(
                            onPressed: () {
                              context.router
                                  .push(CurrencySelectorRoute(currentCurrency: currency??'', setCurrency: (currency) {
                                setState(() {
                                  this.currency = currency;
                                  getStats();
                                });
                              }));
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.all(18.0),
                              textStyle: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                              elevation: 1,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            icon: Image.asset("assets/images/change.png"),
                            label: const Text("Currency"),
                          ),
                        ),
                      ]),
                    ],
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: ToggleSwitch(
                        minWidth: 90.0,
                        cornerRadius: 40.0,
                        activeBgColors: const [
                          [cLightBlueColor],
                          [cLightBlueColor]
                        ],
                        activeFgColor: cGreyColor,
                        inactiveBgColor: cWhiteGreyColor,
                        inactiveFgColor: cLightBlueColor,
                        initialLabelIndex:
                            timeFrame == TimeFrame.monthly ? 0 : 1,
                        totalSwitches: 2,
                        labels: const ['Monthly', 'Yearly'],
                        radiusStyle: true,
                        onToggle: (index) {
                          timeFrame =
                              index == 0 ? TimeFrame.monthly : TimeFrame.yearly;
                          if (timeFrame == TimeFrame.monthly) {
                            _onMonthChanged(DateTime.now());
                          } else {
                            _onYearChanged(DateTime.now());
                          }
                        },
                      )),
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
                                  context.router
                                      .replace(const CategoriesRoute());
                                })
                          ]),
                        )
                      : Column(
                          children: [
                            // change month with two arrows left and right
                            timeFrame == TimeFrame.monthly
                                ? MonthSelector(
                                    currentMonth: selectedMonth,
                                    onChanged: (month) {
                                      _onMonthChanged(month);
                                    },
                                  )
                                : YearSelector(
                                    currentYear: selectedYear,
                                    onChanged: (year) {
                                      _onYearChanged(year);
                                    },
                                  ),
                            inFuture
                                ? const Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        SizedBox(height: 16),
                                        Text(
                                          "We cannot read the future...yet!",
                                          style: TextStyle(
                                              color: cBlackColor,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                        SizedBox(height: 16),
                                      ],
                                    ),
                                  )
                                :
                                // Total spent amount
                                Column(
                                    children: <Widget>[
                                      const SizedBox(height: 16),
                                      // Total spent amount
                                      GestureDetector(
                                        onTap: () {
                                          totalSpentAmount != 0
                                              ? context.router.push(
                                                  ExpenseStatisticsRoute(
                                                      yearly: yearly,
                                                      currency: currency,
                                                      selectedDate: yearly
                                                          ? selectedYear
                                                          : selectedMonth))
                                              : null;
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 32),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 16),
                                                  height: 80,
                                                  decoration: BoxDecoration(
                                                    color: cWhiteColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      const Text(
                                                        "Spent",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: cBlackColor),
                                                      ),
                                                      Text(
                                                        "${totalSpentAmount.toStringAsFixed(2)} ${currency}",
                                                        style: const TextStyle(
                                                            fontSize: 24,
                                                            fontWeight:
                                                                FontWeight.bold,
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
                                      categoryExpenseStatMonth == null &&
                                              categoryExpenseStatYear == null
                                          ? const SizedBox()
                                          : ListTile(
                                              onTap: () {},
                                              title: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(timeFrame ==
                                                              TimeFrame
                                                                  .monthly &&
                                                          categoryExpenseStatMonth !=
                                                              null
                                                      ? categoryExpenseStatMonth!
                                                          .categoryName
                                                          .getOrCrash()
                                                      : categoryExpenseStatYear !=
                                                              null
                                                          ? categoryExpenseStatYear!
                                                              .categoryName
                                                              .getOrElse(
                                                                  "hello")
                                                          : "hello3"),
                                                  const Text(
                                                    "Top Spent Category",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        color: cBlackColor),
                                                  ),
                                                ],
                                              ),
                                              leading: Container(
                                                width: 40,
                                                height: 40,
                                                padding:
                                                    const EdgeInsets.all(5),
                                                child: timeFrame ==
                                                            TimeFrame.monthly &&
                                                        categoryExpenseStatMonth !=
                                                            null
                                                    ? categoryExpenseStatMonth!
                                                            .isAllInclusive
                                                        ? const Icon(
                                                            Icons.all_inclusive)
                                                        : CircularProgressIndicator(
                                                            strokeWidth: 5,
                                                            value:
                                                                categoryExpenseStatMonth!
                                                                    .percentage,
                                                            backgroundColor:
                                                                cGreyColor,
                                                            valueColor:
                                                                AlwaysStoppedAnimation<
                                                                    Color>(
                                                              categoryExpenseStatMonth!
                                                                      .isLeft
                                                                  ? cGreenColor
                                                                  : cRedColor,
                                                            ),
                                                          )
                                                    : const SizedBox(),
                                              ),
                                              trailing: IntrinsicWidth(
                                                child: Row(
                                                  children: [
                                                    Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      children: [
                                                        Text(
                                                          timeFrame ==
                                                                  TimeFrame
                                                                      .monthly
                                                              ? "${categoryExpenseStatMonth!.amount} ${currency}"
                                                              : categoryExpenseStatYear !=
                                                                      null
                                                                  ? "${categoryExpenseStatYear!.amount} ${currency}"
                                                                  : "",
                                                          style: const TextStyle(
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color:
                                                                  cGreyColor),
                                                        ),
                                                        timeFrame ==
                                                                TimeFrame
                                                                    .monthly
                                                            ? categoryExpenseStatMonth!
                                                                    .isAllInclusive
                                                                ? const SizedBox()
                                                                : categoryExpenseStatMonth!
                                                                        .isOverspent
                                                                    ? Text(
                                                                        "Overspent ${categoryExpenseStatMonth!.overspentAmount.toStringAsFixed(2)}",
                                                                        style:
                                                                            const TextStyle(
                                                                          fontSize:
                                                                              12,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          color:
                                                                              cRedColor,
                                                                        ),
                                                                      )
                                                                    : Text(
                                                                        "Left ${categoryExpenseStatMonth!.leftAmount.toStringAsFixed(2)}",
                                                                        style:
                                                                            const TextStyle(
                                                                          fontSize:
                                                                              12,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          color:
                                                                              cGreenColor,
                                                                        ),
                                                                      )
                                                            : const SizedBox()
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                      const SizedBox(height: 16),
                                    ],
                                  ),
                            inFuture
                                ? const SizedBox()
                                : Column(
                                    children: <Widget>[
                                      const SizedBox(height: 16),
                                      // Total spent amount
                                      GestureDetector(
                                        onTap: () {
                                          totalIncomeAmount != 0
                                              ? context.router.push(
                                                  IncomeStatisticsRoute(
                                                      yearly: yearly,
                                                      currency: currency,
                                                      selectedDate: yearly
                                                          ? selectedYear
                                                          : selectedMonth))
                                              : null;
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 32),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 16),
                                                  height: 80,
                                                  decoration: BoxDecoration(
                                                    color: cWhiteColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      const Text(
                                                        "Income",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: cBlackColor),
                                                      ),
                                                      Text(
                                                        "${totalIncomeAmount.toStringAsFixed(2)} ${currency}",
                                                        style: const TextStyle(
                                                            fontSize: 24,
                                                            fontWeight:
                                                                FontWeight.bold,
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
                                      categoryIncomeStatMonth == null &&
                                              categoryIncomeStatYear == null
                                          ? const SizedBox()
                                          : ListTile(
                                              onTap: () {},
                                              title: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(timeFrame ==
                                                              TimeFrame
                                                                  .monthly &&
                                                          categoryIncomeStatMonth !=
                                                              null
                                                      ? categoryIncomeStatMonth!
                                                          .categoryName
                                                          .getOrCrash()
                                                      : categoryIncomeStatYear !=
                                                              null
                                                          ? categoryIncomeStatYear!
                                                              .categoryName
                                                              .getOrCrash()
                                                          : "hello"),
                                                  const Text(
                                                    "Top Income Category",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        color: cBlackColor),
                                                  ),
                                                ],
                                              ),
                                              leading: false
                                                  ? Container(
                                                      width: 40,
                                                      height: 40,
                                                      padding:
                                                          const EdgeInsets.all(
                                                              5),
                                                      child: timeFrame ==
                                                                  TimeFrame
                                                                      .monthly &&
                                                              categoryIncomeStatMonth !=
                                                                  null
                                                          ? categoryIncomeStatMonth!
                                                                  .isAllInclusive
                                                              ? const Icon(Icons
                                                                  .all_inclusive)
                                                              : CircularProgressIndicator(
                                                                  strokeWidth:
                                                                      5,
                                                                  value: categoryIncomeStatMonth!
                                                                      .percentage,
                                                                  backgroundColor:
                                                                      cGreyColor,
                                                                  valueColor:
                                                                      AlwaysStoppedAnimation<
                                                                          Color>(
                                                                    categoryIncomeStatMonth!
                                                                            .isLeft
                                                                        ? cGreenColor
                                                                        : cRedColor,
                                                                  ),
                                                                )
                                                          : const SizedBox(),
                                                    )
                                                  : const SizedBox(),
                                              trailing: IntrinsicWidth(
                                                child: Row(
                                                  children: [
                                                    Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      children: [
                                                        Text(
                                                          timeFrame ==
                                                                      TimeFrame
                                                                          .monthly &&
                                                                  categoryIncomeStatMonth !=
                                                                      null
                                                              ? "${categoryIncomeStatMonth!.amount} ${currency}"
                                                              : categoryIncomeStatYear !=
                                                                      null
                                                                  ? "${categoryIncomeStatYear!.amount} ${currency}"
                                                                  : "",
                                                          style: const TextStyle(
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color:
                                                                  cGreyColor),
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
