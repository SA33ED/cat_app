import 'package:cat_app/core/database/api/end_points.dart';

class CatModel {
  CatModel({
    required this.id,
    required this.url,
    required width,
    required height,
  });
  String id;
  String url;

  factory CatModel.fromJson(Map<String, dynamic> jsonData) {
    return CatModel(
      id: jsonData[ApiKeys.id],
      url: jsonData[ApiKeys.url],
      width: jsonData[ApiKeys.width],
      height: jsonData[ApiKeys.height],
    );
  }
}
