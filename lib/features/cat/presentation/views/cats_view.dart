import 'package:cat_app/core/utils/app_colors.dart';
import 'package:cat_app/features/cat/presentation/model_view/cubit/cat_cubit.dart';
import 'package:cat_app/features/cat/presentation/model_view/cubit/cat_state.dart';
import 'package:cat_app/features/cat/presentation/views/widgets/cat_tap.dart';
import 'package:cat_app/features/cat/presentation/views/widgets/components/app_bar_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CatsView extends StatelessWidget {
  const CatsView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        backgroundColor: AppColors.grey,
        appBar: appBarComponent(),
        body: BlocBuilder<CatCubit, CatState>(builder: (context, state) {
          return TabBarView(
            children: [
              state is GetCatsLoadingState
                  ? const Center(child: CircularProgressIndicator())
                  : const CatTab(),
            ],
          );
        }),
      ),
    );
  }
}
