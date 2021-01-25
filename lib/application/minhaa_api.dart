import 'package:dio/dio.dart';
import 'package:minhaa/base_url.dart';

class MinhaaApi {
  static BaseOptions _baseOptions = new BaseOptions(baseUrl: BASE_URL);
//*for unauth api rout
  static Dio dio = new Dio(_baseOptions);
//*for authanticated route
  static Dio dioAuth() {
    return Dio();
  }
}
