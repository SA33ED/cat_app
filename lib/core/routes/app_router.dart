import 'package:cat_app/core/database/api/dio_consumer.dart';
import 'package:cat_app/core/services/service_locator.dart';
import 'package:cat_app/features/cat/data/repositories/cats_repository_implementation.dart';
import 'package:cat_app/features/cat/presentation/model_view/cubit/cat_cubit.dart';
import 'package:cat_app/features/cat/presentation/views/cats_view.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) {
          return BlocProvider(
            create: (context) => CatCubit(
                CatsRepositoryImplementation(api: DioConsumer(dio: sl<Dio>())))
              ..getCatsList(),
            child: const CatsView(),
          );
        },
      ),
    ],
  );
}
