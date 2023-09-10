import 'package:cat_app/core/database/api/api_consumer.dart';
import 'package:cat_app/core/database/api/end_points.dart';
import 'package:cat_app/core/error/failure.dart';
import 'package:cat_app/features/cat/data/models/cat_model.dart';
import 'package:cat_app/features/cat/data/repositories/cats_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class CatsRepositoryImplementation implements CatRepository {
  final ApiConsumer api;

  CatsRepositoryImplementation({required this.api});
  @override
  Future<Either<Failure, List<CatModel>>> fetchCats() async {
    try {
      final response = await api.get(
        EndPoints.images,
        queryParameters: {
          "limit": '80',
          "order": 'Random',
          "size": 'small',
          "page": '3',
          "sub_id": 'demo-ce06ee,'
        },
      );
      return right(
          response.map<CatModel>((e) => CatModel.fromJson(e)).toList());
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
