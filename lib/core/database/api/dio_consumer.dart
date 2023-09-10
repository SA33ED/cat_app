import 'package:cat_app/core/database/api/api_consumer.dart';
import 'package:cat_app/core/database/api/end_points.dart';
import 'package:cat_app/core/error/failure.dart';
import 'package:dio/dio.dart';

class DioConsumer extends ApiConsumer {
  final Dio dio;
  DioConsumer({required this.dio}) {
    dio.options.baseUrl = EndPoints.baseUrl;
  }

  @override
  Future get(String path,
      {Map<String, dynamic>? queryParameters,
      Map<String, String>? headers}) async {
    try {
      final response = await dio.get(
        path,
        queryParameters: queryParameters,
        options: Options(
          headers: headers,
        ),
      );
      return response.data;
    } on DioException catch (error) {
      return ServerFailure.fromDioException(error);
    }
  }
}
