import 'package:cat_app/features/cat/data/models/cat_model.dart';
import 'package:cat_app/features/cat/presentation/views/widgets/components/default_cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageComponent extends StatelessWidget {
  const ImageComponent({
    super.key,
    required this.cat,
  });
  final CatModel cat;
  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: cat.id,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
        child: DefaultCachedNetworkImage(
          imageUrl: cat.url,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
