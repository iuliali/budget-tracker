import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../domain/transactions/entities/income.dart';
import '../../../injection.dart';
import '../../../application/transactions/incomes/incomes_bloc.dart';
import '../../core/colors.dart';
import '../../core/routing/router.dart';
import '../../core/widgets/app_bar.dart';
import '../../core/widgets/bottom_bar.dart';
import '../../core/widgets/header.dart';
import '../../core/widgets/menu.dart';

@RoutePage()
class IncomesPage extends StatelessWidget {
  const IncomesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
      getIt<IncomesBloc>()..add(const IncomesEvent.getIncomes()),
      child: Scaffold(
        bottomNavigationBar: const BottomBar(),
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: generateAppBarWidget(context),
        drawer: const Drawer(child: MenuWidget()),
        floatingActionButton: FloatingActionButton(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0))
          ),
          onPressed: () => context.router.navigate(const AddIncomeRoute()),
          backgroundColor: Theme.of(context).colorScheme.primary,
          child: const Icon(Icons.add),
        ),
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: HeaderWidget(title: "Incomes", subtitle: "All times"),
              ),
              BlocConsumer<IncomesBloc, IncomesState>(
                listener: (context, state) {
                  state.failureOrIncomes.fold(
                        () {},
                        (either) => either.fold(
                          (failure) => ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(failure.maybeMap(
                            unexpected: (_) =>
                            "Unexpected error occured while fetching categories",
                            notFound: (_) => "Income not found",
                            orElse: () => "Unexpected error occured",
                          )),
                        ),
                      ),
                          (categories) {},
                    ),
                  );
                },
                builder: (context, state) {
                  final List<Income> listOfIncomes =
                  state.failureOrIncomes.fold(
                          () => [],
                          (a) => a.fold(
                            (l) => [],
                            (r) => r,
                      ));
                  if (state.isFetching) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (listOfIncomes.isEmpty) {
                    return const Center(
                      child: Text("No incomes found!"),
                    );
                  }
                  return ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: listOfIncomes.length,
                    itemBuilder: (context, index) {
                      final item = listOfIncomes[index];
                      return Dismissible(
                        key: Key(item.id.toString()),
                        onDismissed: (direction) {
                          context.read<IncomesBloc>().add(
                              IncomesEvent.deleteIncome(item.id));
                        },
                        background: Container(
                          color: Colors.red,
                          alignment: Alignment.center,
                          child: const Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.delete,
                                  color: Colors.white,
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.delete,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        child: ListTile(
                          onTap: () {
                            context.router.navigate(
                              EditIncomeRoute(income: item),
                            );
                          },
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(item.sender.getOrCrash()),
                              Text(
                                DateFormat.yMMMd()
                                    .format(item.date.getOrCrash()),
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: cGreyColor,
                                ),
                              ),
                            ],
                          ),
                          leading: const Icon(Icons.drag_indicator),
                          trailing: IntrinsicWidth(
                            child: Row(
                              children: [
                                Text(
                                  "${item.amount.getOrCrash()} ${item.currency.getOrCrash()}",
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: cGreyColor
                                  ),
                                ),
                                const SizedBox(width: 26),
                                const Icon(Icons.edit),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
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
