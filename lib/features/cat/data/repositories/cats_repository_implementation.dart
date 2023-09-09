import 'package:cat_app/core/database/api/api_consumer.dart';
import 'package:cat_app/core/database/api/end_points.dart';
import 'package:cat_app/core/error/failure.dart';
import 'package:cat_app/core/services/service_locator.dart';
import 'package:cat_app/features/cat/data/models/cat_model.dart';
import 'package:cat_app/features/cat/data/repositories/cats_repository.dart';
import 'package:dartz/dartz.dart';

class CatsRepositoryImplementation implements CatRepository {
  @override
  Future<Either<Failure, List<CatModel>>> fetchCats() async {
    final response = await sl<ApiConsumer>().get(
      EndPoints.images,
      queryParameters: {
        "limit": '80',
        "order": 'Random',
        "size": 'small',
        "page": '3',
        "sub_id": 'demo-ce06ee,'
      },
    );
    return response.map<CatModel>((e) => CatModel.fromJson(e)).toList();
  }
}
