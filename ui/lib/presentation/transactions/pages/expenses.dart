import 'package:auto_route/auto_route.dart';
import 'package:budget_tracker/domain/auth/value_objects.dart';
import 'package:budget_tracker/presentation/core/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/colors.dart';
import '../../core/widgets/app_bar.dart';
import '../../core/widgets/menu.dart';

@RoutePage()
class ExpensesPage extends StatelessWidget {
  const ExpensesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categories = Future(() => []);
    var transactions = Future(() => []);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: generateAppBarWidget(context, FirstName("Victor")),
      drawer: const Drawer(
        child: MenuWidget(),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: ListView(
            physics: const ClampingScrollPhysics(),
            children: <Widget>[
              const HeaderWidget(title: "Expenses", subtitle: "Today"),
              FutureBuilder(
                future: categories,
                builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                  final lengthOfCategories = snapshot.hasData ? snapshot.data!.length : 0;
                  return SizedBox(
                    height: 500,
                    child: lengthOfCategories == 0
                        ? const Center(
                            child: Text("No transactions"),
                          )
                        : FutureBuilder(
                            future: transactions,
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                return ListView.builder(
                                  padding:
                                      const EdgeInsets.only(left: 16, right: 8),
                                  scrollDirection: Axis.vertical,
                                  itemCount: snapshot.data!.length,
                                  itemBuilder: (context, index) {
                                    var transaction = snapshot.data![index];
                                    return Container(
                                      margin: const EdgeInsets.all(8),
                                      padding: const EdgeInsets.all(16),
                                      decoration: BoxDecoration(
                                        color: cWhiteGreyColor,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                transaction.category != null
                                                    ? Text(
                                                        transaction.category!.name,
                                                        style: GoogleFonts.nunito(
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color: cBlackColor),
                                                      )
                                                    : const SizedBox(),
                                                Text(
                                                  transaction.title,
                                                  style: GoogleFonts.nunito(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                    color: cGreyColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 16),
                                            child: Text(
                                              "${transaction.amount} RON",
                                              style: GoogleFonts.nunito(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                color: cBlackColor,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  },
                                );
                              } else {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              }
                            },
                          ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
