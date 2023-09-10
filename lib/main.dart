import 'package:cat_app/app/my_app.dart';
import 'package:cat_app/core/services/bloc_observer.dart';
import 'package:cat_app/core/services/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  serviceLocator();
  runApp(const CatApp());
}
