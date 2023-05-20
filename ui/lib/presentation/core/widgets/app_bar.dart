import 'package:budget_tracker/domain/auth/value_objects.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors.dart';

PreferredSizeWidget generateAppBarWidget(BuildContext context, FirstName firstName) {
  final firstNameStr = firstName.getOrCrash();
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
      title: Text(
        "Hi, $firstNameStr",
        style: GoogleFonts.nunito(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: cBlackColor,
        ),
      ),
      actions: const <Widget>[
        Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 16,
            backgroundImage: AssetImage("assets/images/profile.webp"),
          ),
        ),
      ],
    );
  }

