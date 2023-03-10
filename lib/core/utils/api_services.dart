import 'package:dio/dio.dart';

class ApiService {
  final String _baseUrl = "https://www.googleapis.com/books/v1";
  final Dio _dio;

  ApiService(this._dio);

  Future<Map<String, dynamic>> getService({required String endPoint}) async {
    Response<dynamic> response = await _dio.get("$_baseUrl$endPoint");
    return response.data;
  }
}
