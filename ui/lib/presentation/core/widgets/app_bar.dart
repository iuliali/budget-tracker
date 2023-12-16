import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../application/auth/auth_bloc.dart';
import '../colors.dart';
import '../routing/router.dart';

PreferredSizeWidget generateAppBarWidget(BuildContext context) {
  return AppBar(
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
    title: BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {},
      builder: (context, state) {
        final firstNameStr = state.user.fold(
          () => "",
          (a) => a.firstName.getOrCrash(),
        );
        return Text(
          "Hi, $firstNameStr",
          style: GoogleFonts.nunito(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: cBlackColor,
          ),
        );
      },
    ),
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () {
            context.router.navigate(const UserDetailsRoute());
          },
          child: const CircleAvatar(
            radius: 16,
            backgroundImage: AssetImage("assets/images/profile.webp"),
          ),
        ),
      ),
    ],
  );
}
