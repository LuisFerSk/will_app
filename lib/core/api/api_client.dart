import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:will_app/core/api/abstract_api_client.dart';
import 'package:will_app/core/api/interceptor/curl_log.dart';
import 'package:will_app/core/api/interceptor/query.dart';

class APIClient {
  static AbstractAPIClient apiClient({
    required String baseDomain,
    bool disableRequestBodyLogging = false,
  }) {
    BaseOptions baseOptions = BaseOptions();
    baseOptions.connectTimeout = 60 * 1000;
    baseOptions.receiveTimeout = 60 * 1000;
    baseOptions.contentType = Headers.jsonContentType;
    baseOptions.responseType = ResponseType.json;

    final dio = Dio(baseOptions);

    if (kDebugMode) {
      dio.interceptors.add(
          CurlLogInterceptor(disableRequestBody: disableRequestBodyLogging));
      dio.interceptors.add(QueryInterceptor());
    }
    return AbstractAPIClient(dio, baseUrl: baseDomain);
  }
}
