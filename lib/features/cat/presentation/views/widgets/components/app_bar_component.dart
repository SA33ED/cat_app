import 'package:cat_app/core/utils/app_strings.dart';
import 'package:cat_app/features/cat/presentation/model_view/cubit/cat_cubit.dart';
import 'package:cat_app/features/cat/presentation/model_view/cubit/cat_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

AppBar appBarComponent() {
  return AppBar(
    title: const Text(AppStrings.appName),
    actions: [
      BlocBuilder<CatCubit, CatState>(
        builder: (context, state) {
          return IconButton(
            onPressed: () {
              BlocProvider.of<CatCubit>(context).getCatsList();
            },
            icon: const Icon(Icons.refresh),
          );
        },
      ),
    ],
    bottom: const TabBar(
      tabs: [
        Tab(text: AppStrings.cats),
      ],
    ),
  );
}
