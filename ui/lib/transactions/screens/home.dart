import 'package:budget_tracker/common/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../categories/services/categories.dart';
import '../../common/menu/services.dart';
import '../../common/menu/widgets/menu.dart';
import '../components/expenses-stats.dart';
import '../models/expense.dart';
import '../services/statistics.dart';
import '../services/transactions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const firstName = "John";

  final statistics = getStatistics();
  final categories = getCategories();

  @override
  Widget build(BuildContext context) {
    var transactions = getTransactions();
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        elevation: 0,
        leading: Builder(builder: (context) {
          return IconButton(
              icon: const Icon(
                Icons.menu,
                color: cBlackColor,
              ),
              onPressed: () => Scaffold.of(context).openDrawer());
        }),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.notifications,
              color: cGreyColor,
            ),
            onPressed: () {},
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 16,
              backgroundImage: AssetImage("assets/images/profile.webp"),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: MenuWidget(
          items: menuItems,
          selectedIndex: 0,
          onItemSelected: (index) {
            Navigator.of(context).pushNamed(menuItems[index].route);
          },
        ),
      ),
      // square floating button button
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: const Icon(Icons.add),
      ),
      body: ListView(
        physics: const ClampingScrollPhysics(),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Text(
              "Hi, $firstName",
              style: GoogleFonts.nunito(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: cBlackColor,
              ),
            ),
          ),
          SizedBox(
            height: 175,
            child: FutureBuilder(
              future: statistics,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    padding: const EdgeInsets.only(left: 16, right: 8),
                    scrollDirection: Axis.horizontal,
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      var stat = snapshot.data![index];
                      return Container(
                        margin: const EdgeInsets.only(
                            right: 8, top: 16, bottom: 16),
                        height: 100,
                        width: 220,
                        decoration: BoxDecoration(
                            color: cWhiteGreyColor,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                  color: cBlackColor.withOpacity(0.1),
                                  blurRadius: 10,
                                  spreadRadius: 4,
                                  offset: const Offset(0, 8))
                            ]),
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              top: 16,
                              left: 16,
                              child: Icon(
                                stat.icon,
                                color: stat.color,
                                size: 18,
                              ),
                            ),
                            Positioned(
                              top: 16,
                              right: 16,
                              child: Text(
                                snapshot.data![index].name,
                                style: GoogleFonts.nunito(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: cGreyColor,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 16,
                              left: 16,
                              child: Text(
                                "${snapshot.data![index].amount} RON",
                                style: GoogleFonts.nunito(
                                  fontSize: 24,
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
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, top: 24),
            child: Text(
              "Transactions",
              style: GoogleFonts.nunito(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: cBlackColor,
              ),
            ),
          ),
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
                                      Container(
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 8),
                                        child: transaction is Expense
                                            ? const Icon(
                                                Icons.arrow_downward,
                                                color: cRedColor,
                                                size: 18,
                                              )
                                            : const Icon(
                                                Icons.arrow_upward,
                                                color: cGreenColor,
                                                size: 18,
                                              ),
                                      ),
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
    );
  }
}
