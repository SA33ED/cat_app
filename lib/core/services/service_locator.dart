import 'package:cat_app/features/cat/data/repositories/cats_repository_implementation.dart';
import 'package:cat_app/features/cat/presentation/model_view/cubit/cat_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../database/api/api_consumer.dart';
import '../database/api/dio_consumer.dart';

final sl = GetIt.instance;
void serviceLocator() {
  sl.registerLazySingleton(
    () => Dio(),
  );
  sl.registerLazySingleton<ApiConsumer>(
    () => DioConsumer(
      dio: sl(),
    ),
  );
  sl.registerLazySingleton<CatsRepositoryImplementation>(
    () => CatsRepositoryImplementation(
      api: sl<ApiConsumer>(),
    ),
  );
  sl.registerLazySingleton<CatCubit>(
    () => CatCubit(
      sl<CatsRepositoryImplementation>(),
    ),
  );
}
