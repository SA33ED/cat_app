import 'package:cat_app/core/utils/app_strings.dart';
import 'package:flutter/material.dart';

AppBar getAppBar() {
  return AppBar(
    title: const Text(AppStrings.appName),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.refresh,
        ),
      ),
    ],
    bottom: const TabBar(tabs: [
      Tab(
        text: AppStrings.cats,
      )
    ]),
  );
}
