// ignore_for_file: avoid_print

import 'package:cat_app/features/cat/data/models/cat_model.dart';
import 'package:cat_app/features/cat/data/repositories/cats_repository.dart';
import 'package:cat_app/features/cat/presentation/model_view/cubit/cat_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CatCubit extends Cubit<CatState> {
  CatCubit(this.catRepository) : super(CatInitial());
  CatRepository catRepository;
  List<CatModel> catsList = [];
  void getCatsList() async {
    try {
      emit(GetCatsLoadingState());
      var response = await catRepository.fetchCats();
      response.fold((failure) {
        emit(GetCatsFailureState());
        print(failure.errMessage);
      }, (cats) {
        emit(GetCatsSuccessState());
        catsList = cats;
        print(cats);
      });
    } catch (e) {
      print(e.toString());
    }
  }
}
