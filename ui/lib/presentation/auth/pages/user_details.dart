import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:budget_tracker/injection.dart';
import 'package:budget_tracker/presentation/auth/pages/user_details_square.dart';
import 'package:budget_tracker/presentation/core/widgets/header.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../core/colors.dart';

@RoutePage()
class UserDetailsPage extends StatefulWidget {
  const UserDetailsPage({Key? key}) : super(key: key);

  @override
  State<UserDetailsPage> createState() => _UserDetailsPageState();
}

class _UserDetailsPageState extends State<UserDetailsPage> {
  late List currencies = [];

  var filteredCurrencies = [];

  var currentCurrency = 'RON (Romanian)';

  @override
  void initState() {
    getCurrencies().then((value) => {
      setState(() {
        currencies = value;
        filteredCurrencies = value;
      })
    });
    super.initState();
  }

  Future<List<String>> getCurrencies() async {
    final client = getIt<Dio>();
    final response = await client.get('/currencies/all');
    // getCurrencies from currency key where the key is short currency and value is country
    var currencies = response.data['currencies'].keys.toList();
    for (var index = 0; index < currencies.length; index++) {
      var currency = currencies[index];
      currencies[index] = currency + ' (' + response.data['currencies'][currency] + ')';
      if (currencies[index] == currentCurrency) {
         var aux = currencies[0];
         currencies[0] = currencies[index];
         currencies[index] = aux;
      }
    }
    return currencies;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => context.router.pop(),
          icon: const Icon(Icons.arrow_back, color: cBlackColor),
        ),
      ),
      body: ListView(
        children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: (HeaderWidget(
                  title: 'User Details', subtitle: 'Set default currency'))),
          // search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
            child: TextField(
              onChanged: (value) {
                // filter currencies
                setState(() {
                  filteredCurrencies =
                  currencies
                      .where((element) => element.contains(value))
                      .toList();
                });
              },
              decoration: InputDecoration(
                hintText: 'Search',
                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
          ),
          ListView.builder(
            itemBuilder: (context, index) {
              return MySquare(
                child: filteredCurrencies[index],
                isSelected: filteredCurrencies[index].compareTo(currentCurrency) == 0,
                onTap: () {
                  setState(() {
                    currentCurrency = filteredCurrencies[index];
                  });
                },
              );
            },
            itemCount: filteredCurrencies.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics()
          )
        ],
      ),
    );
  }
}
