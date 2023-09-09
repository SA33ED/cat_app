import 'package:cat_app/core/functions/get_app_bar.dart';
import 'package:flutter/material.dart';

class CatsView extends StatelessWidget {
  const CatsView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: getAppBar(),
      ),
    );
  }
}
