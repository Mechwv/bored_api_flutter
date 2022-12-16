import 'package:dio/dio.dart';
import 'package:dio_logger/dio_logger.dart';

import '../models/api_response.dart';

class WeatherService {
  static const _BASE_URL = 'http://www.boredapi.com/api/activity';

  final Dio _dio = Dio(
    BaseOptions(baseUrl: _BASE_URL),
  );

  WeatherService() {
    _dio.interceptors.add(dioLoggerInterceptor);
  }

  Future<ApiResponse?> getWeatherLocation(
      String? type,
      int? participants,
      double? price,
      double? accessibility,
      ) async {

    Map<String, dynamic> q = {};
    if (type != null) {
      q['type'] = type;
    }
    if (participants != null) {
      q['participants'] = participants;
    }
    if (price != null) {
      q['price'] = price;
    }
    if (accessibility != null) {
      q['accessibility'] = accessibility;
    }

    final response = await _dio.get('', queryParameters: q);
    return ApiResponse.fromJson(response.data);
  }
}