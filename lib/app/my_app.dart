import 'package:cat_app/core/routes/app_router.dart';
import 'package:cat_app/core/services/service_locator.dart';
import 'package:cat_app/features/cat/presentation/model_view/cubit/cat_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CatApp extends StatelessWidget {
  const CatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<CatCubit>()..getCatsList(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.router,

      ),
    );
  }
}
