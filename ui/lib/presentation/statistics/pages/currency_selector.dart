import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../../injection.dart';
import '../../auth/pages/user_details_square.dart';
import '../../core/colors.dart';
import '../../core/widgets/header.dart';

@RoutePage()
class CurrencySelectorPage extends StatefulWidget {
  final Function(String) setCurrency;
  final String currentCurrency;
  const CurrencySelectorPage({Key? key, required this.setCurrency, required this.currentCurrency}) : super(key: key);

  @override
  State<CurrencySelectorPage> createState() => _CurrencySelectorPageState();

}

class _CurrencySelectorPageState extends State<CurrencySelectorPage>{

  late List currencies = [];

  var filteredCurrencies = [];

  void initState() {
    getCurrencies().then((value) =>
    {
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
      currencies[index] =
          currency + ' (' + response.data['currencies'][currency] + ')';
      if (currencies[index].contains(widget.currentCurrency)) {
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
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: (HeaderWidget(
                  title: 'Currency Selector', subtitle: 'Set currency for statistics'))),
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
                  filteredCurrencies[index].contains(widget.currentCurrency),
                  onTap: () {
                    widget.setCurrency(filteredCurrencies[index].split(' ')[0]);
                    context.router.pop();
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

