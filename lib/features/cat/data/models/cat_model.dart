import 'package:cat_app/core/database/api/end_points.dart';

class CatModel {
  CatModel({
    required id,
    required url,
    required width,
    required height,
  });
  late int id;
  late String url;
  late num width;
  late num height;
  factory CatModel.fromJson(Map<String, dynamic> jsonData) {
    return CatModel(
      id: jsonData[ApiKeys.id],
      url: jsonData[ApiKeys.url],
      width: jsonData[ApiKeys.width],
      height: jsonData[ApiKeys.height],
    );
  }
}
