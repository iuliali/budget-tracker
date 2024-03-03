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

  var currentCurrency = '';

  @override
  void initState() {
    getCurrencies().then((value) => {
          setState(() {
            currencies = value;
            filteredCurrencies = value;
          })
        });
    getCurrentCurrency();
    super.initState();
  }

  Future<List<String>> getCurrencies() async {
    final client = getIt<Dio>();
    final response = await client.get('/currencies/all');
    // getCurrencies from currency key where the key is short currency and value is country
    var currencies = response.data['currencies'].keys.toList();
    for (var index = 0; index < currencies.length; index++) {
      var currency = currencies[index];
      currencies[index] =
          currency + ' (' + response.data['currencies'][currency] + ')';
      if (currencies[index] == currentCurrency) {
        var aux = currencies[0];
        currencies[0] = currencies[index];
        currencies[index] = aux;
      }
    }
    return currencies;
  }

  Future<void> getCurrentCurrency() async {
    final client = getIt<Dio>();
    final response = await client.get('/user/details');
    var indexDefaultCurrency = currencies.map((e) => e.split(' ')[0])
        .toList().indexOf(response.data['defaultCurrency']);
    var aux = currencies[0];
    currencies[0] = currencies[indexDefaultCurrency];
    currencies[indexDefaultCurrency] = aux;
    setState(() {
      currentCurrency = response.data['defaultCurrency'];
    });
  }

  Future<void> setCurrency(String currency) async {
    final client = getIt<Dio>();
    try {
        final response = await client
            .patch('/user/default-currency', data : {'currency' : currency.split(' ')[0]});
        if (response.statusCode == 200) {
          setState(() {
            currentCurrency = currency;
          });
        };
      } catch (e) {
      print(e);
    }
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
          const Padding(
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
                  filteredCurrencies = currencies
                      .where((element) => element.toString().toLowerCase().contains(value.toLowerCase()))
                      .toList();
                });
              },
              decoration: InputDecoration(
                hintText: 'Search',
                suffixIcon: const Icon(Icons.search),
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
                  isSelected:
                      filteredCurrencies[index].split(' ')[0].compareTo(currentCurrency) == 0,
                  onTap: () {
                    setCurrency(filteredCurrencies[index].split(' ')[0]);
                  },
                );
              },
              itemCount: filteredCurrencies.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics())
        ],
      ),
    );
  }
}
