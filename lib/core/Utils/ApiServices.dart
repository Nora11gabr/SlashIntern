import 'package:dio/dio.dart';

class ApiServices {
  final _baseUrl = 'https://slash-backend.onrender.com';
  final Dio _dio;
  ApiServices(this._dio);
  Future<Map<String, dynamic>> get({required String endpoint}) async {
    var respose = await _dio.get('$_baseUrl$endpoint');
    print(respose.data);
    return respose.data;
  }
}
