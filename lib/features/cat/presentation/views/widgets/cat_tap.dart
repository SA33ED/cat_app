
import 'package:cat_app/features/cat/presentation/model_view/cubit/cat_cubit.dart';
import 'package:cat_app/features/cat/presentation/views/widgets/components/image_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class CatTab extends StatelessWidget {
  const CatTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      child: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 12,
          axisDirection: AxisDirection.down,
          children: List.generate(
            BlocProvider.of<CatCubit>(context).catsList.length,
            (index) => ImageComponent(
              cat: BlocProvider.of<CatCubit>(context).catsList[index],
            ),
          ),
        ),
      ),
    );
  }
}
