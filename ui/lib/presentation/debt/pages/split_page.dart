import 'package:auto_route/auto_route.dart';
import 'package:budget_tracker/application/dept/split_form/split_form_bloc.dart';
import 'package:budget_tracker/presentation/debt/widgets/split_amount_form.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/debt/entities/group.dart';
import '../../../injection.dart';
import '../../core/colors.dart';
import '../../core/routing/router.dart';
import '../../core/widgets/bottom_bar.dart';
import '../../core/widgets/header.dart';
import '../widgets/split_equally_form.dart';

@RoutePage()
class SplitPage extends StatelessWidget {
  const SplitPage({Key? key, required this.group}) : super(key: key);

  final Group group;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SplitFormBloc>()
        ..add(SplitFormEvent.initialized(group, none())),
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
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: BlocConsumer<SplitFormBloc, SplitFormState>(
                listener: (context, state) {
                  state.saveFailureOrSuccessOption.fold(
                    () {},
                    (either) => either.fold(
                      (failure) {
                        final snackBar = SnackBar(
                          content: Text(
                            failure.maybeMap(
                              unexpected: (_) =>
                                  "Unexpected error occured, please contact support.",
                              orElse: () =>
                                  "Unexpected error occured, please contact support.",
                            ),
                          ),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                      (_) {
                        context.router.popAndPush(GroupRoute(group: group));
                      },
                    ),
                  );
                },
                builder: (context, state) {
                  final isEquallyDivided = state.isEquallyDivided;
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const HeaderWidget(
                        title: "Split Expense",
                        subtitle: "Split the expense with your friends",
                      ),
                      const SizedBox(height: 32),
                      Row(
                        children: [
                          Flexible(
                            child: MaterialButton(
                              onPressed: () => context.read<SplitFormBloc>().add(
                                    const SplitFormEvent.isEquallyDividedChanged(
                                        true),
                                  ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "Split Equally",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: cBlackColor,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  isEquallyDivided
                                      ? Container(
                                          height: 4,
                                          width: 30,
                                          color: cLightBlueColor,
                                        )
                                      : Container(),
                                ],
                              ),
                            ),
                          ),
                          Flexible(
                            child: MaterialButton(
                              onPressed: () => context.read<SplitFormBloc>().add(
                                    const SplitFormEvent.isEquallyDividedChanged(
                                        false),
                                  ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "Split Unequally",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: cBlackColor,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  !isEquallyDivided
                                      ? Container(
                                          height: 4,
                                          width: 30,
                                          color: cLightBlueColor,
                                        )
                                      : Container(),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      Container(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              const SizedBox(height: 32),
                              state.isEquallyDivided
                                  ? const SplitEquallyForm()
                                  : const SplitAmountForm(),
                              const SizedBox(height: 32),
                            ],
                          ),
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
