import 'package:cat_app/core/error/failure.dart';
import 'package:cat_app/features/cat/data/models/cat_model.dart';
import 'package:dartz/dartz.dart';

abstract class CatRepository {
  Future<Either<Failure, List<CatModel>>> fetchCats();
}
