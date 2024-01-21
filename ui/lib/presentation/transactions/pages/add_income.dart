import 'package:auto_route/auto_route.dart';
import 'package:budget_tracker/presentation/core/widgets/header.dart';
import 'package:budget_tracker/presentation/transactions/widgets/income_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/transactions/incomes/income_form/income_form_bloc.dart';
import '../../../injection.dart';
import '../../core/colors.dart';

@RoutePage()
class AddIncomePage extends StatelessWidget {
  const AddIncomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<IncomeFormBloc>(),
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => context.router.pop(),
            icon: const Icon(Icons.arrow_back, color: cBlackColor),
          ),
          backgroundColor: Theme.of(context).colorScheme.background,
          elevation: 0,
        ),
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(32),
            height: MediaQuery.of(context).size.height - 100,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),
                HeaderWidget(
                  title: "Add Income",
                ),
                IncomeForm()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
