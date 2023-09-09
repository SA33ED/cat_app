import 'package:cat_app/features/cat/presentation/model_view/cubit/cat_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CatCubit extends Cubit<CatState> {
  CatCubit() : super(CatInitial());
  
}
