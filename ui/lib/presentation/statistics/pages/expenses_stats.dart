import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:budget_tracker/presentation/statistics/widgets/weekly_chart.dart';
import 'package:card_swiper/card_swiper.dart';
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
import '../widgets/monthly_chart.dart';
import '../widgets/pie_chart.dart';

@RoutePage()
class ExpenseStatisticsPage extends StatefulWidget {
  final bool yearly;
  final String currency;
  final DateTime selectedDate;
  const ExpenseStatisticsPage({super.key, required this.yearly, required this.currency, required this.selectedDate});

  @override
  State<ExpenseStatisticsPage> createState() => _ExpenseStatisticsPageState();
}

class _ExpenseStatisticsPageState extends State<ExpenseStatisticsPage> {
  CategoryStat? selectedCategory;
  List<CategoryStat> categoryStats = [];
  List<WeeklyStat> weeklyStats = [];
  List<MonthlyStat> monthlyStats = [];


  String get currency => widget.currency;
  bool get yearly => widget.yearly;
  DateTime get selectedDate => widget.selectedDate;
  String get timePeriod {
    if (yearly) {
      return "${selectedDate.year}";
    } else {
      return "${DateFormat('MMMM').format(selectedDate)} ${selectedDate.year}";
    }
  }
  @override
  void dispose() {
    super.dispose();
  }

  Future getWeeklyStats(Dio client) async {
    assert(!yearly);
    var formattedDate = DateFormat('yyyy-MM').format(selectedDate);
    final resp = await client.get(
        '/statistics/week-expenses-by-month/${formattedDate}/${currency}');
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
    if (mounted) {
      setState(() {
      weeklyStats = list;
      });
    }
  }

  Future getMonthlyStats(Dio client, List<Category> categories) async {
    var formattedDate = DateFormat('yyyy-MM').format(selectedDate);
    final resp = await client.get(
        '/statistics/month-expenses/${formattedDate}/${currency}');
    final data = resp.data as Map<String, dynamic>;
    final categoryStats = data["categories"] as Map<String, dynamic>;
    final list = List<CategoryStat>.generate(
      categoryStats.length,
          (index) => CategoryStat(
            categoryName: CategoryName(categoryStats.keys.elementAt(index)),
            budgetAmount: categoryStats.values.elementAt(index)["budget"] >= 0 ?
            BudgetAmount.fromString(categoryStats.values.elementAt(index)["budget"].toString()) : null,
            amount: double.tryParse(categoryStats.values.elementAt(index)["sum"].toString()) ?? 0.0,
      ),
    );
    list.sort((a, b) => b.amount.compareTo(a.amount));
    // filter out categories with 0 amount
    list.removeWhere((element) => element.amount == 0.0);
    if (mounted) {
      setState(() {
        this.categoryStats = list;
      });
    }
  }

  Future getYearlyStats(Dio client, List<Category> categories) async {
    final resp = await client.get(
        '/statistics/year-expenses/${selectedDate.year}/${currency}');
    print(resp.data);
    final data = resp.data as Map<String, dynamic>;
    final categoryStats = data["categories"] as Map<String, dynamic>;
    final list = List<CategoryStat>.generate(
      categoryStats.length,
          (index) => CategoryStat(
        categoryName: CategoryName(categoryStats.keys.elementAt(index)),
        budgetAmount: null,
        amount: double.tryParse(categoryStats.values.elementAt(index)["sum"].toString()) ?? 0.0,
      ),
    );
    list.sort((a, b) => b.amount.compareTo(a.amount));
    // filter out categories with 0 amount
    list.removeWhere((element) => element.amount == 0.0);
    if (mounted) {
      setState(() {
        this.categoryStats = list;
      });
    }
  }

  int getMonthNumber(String month) {
    switch(month) {
      case "January": return 1;
      case "February": return 2;
      case "March": return 3;
      case "April": return 4;
      case "May": return 5;
      case "June": return 6;
      case "July": return 7;
      case "August": return 8;
      case "September": return 9;
      case "October": return 10;
      case "November": return 11;
      case "December": return 12;
      default: return 0;
    }
  }

  Future getMonthlyStatsForYear(Dio client, List<Category> categories) async {
    final resp = await client.get(
        '/statistics/year-expenses/${selectedDate.year}/${currency}');
    final data = resp.data as Map<String, dynamic>;
    final dataMonths = data["months"] as Map<String, dynamic>;
    final list = List<MonthlyStat>.generate(
      dataMonths.length,
          (index) => MonthlyStat(
        month: DateFormat("MMMM").format(DateTime(selectedDate.year,
            int.tryParse(dataMonths.keys.elementAt(index))!, 1)),
        amount: double.tryParse(dataMonths.values.elementAt(index).toString()) ?? 0.0,
      ),
    );
    // sort by month
    list.sort((a, b) => getMonthNumber(a.month).compareTo(getMonthNumber(b.month)));

    if (mounted) {
      setState(() {
        monthlyStats = list;
      });
    }
  }


  Future getStats(List<Category> categories) async {
    Dio client = getIt<Dio>();
    Future task1 = !yearly ? getWeeklyStats(client): getMonthlyStatsForYear(client, categories);
    Future task2 = !yearly ? getMonthlyStats(client, categories): getYearlyStats(client, categories);
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: HeaderWidget(
                      title: "Expenses",
                      subtitle: "View how you spent your money!\n$timePeriod"),
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
                                          "Spent",
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
                                        )
                                      :   !yearly && weeklyStats.isNotEmpty   ? WeeklyChart(weeklyStats: weeklyStats)     :
                                          yearly && monthlyStats.isNotEmpty   ? MonthlyChart(monthlyStats: monthlyStats)  :
                                          const SizedBox(),
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
