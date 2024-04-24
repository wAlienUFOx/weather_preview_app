import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class TokenInterceptor extends Interceptor {

  @override
  Future onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = dotenv.env['WEATHER_API_TOKEN'];
    options.path += '&appid=$token';
    super.onRequest(options, handler);
  }

  //debug

  // @override
  // void onError(DioException err, ErrorInterceptorHandler handler) {
  //   print('______');
  //   print(err.message);
  //   print(err.response?.data);
  //   print(err.response?.realUri);
  //   super.onError(err, handler);
  // }
}