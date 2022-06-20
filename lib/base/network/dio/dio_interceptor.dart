import 'package:dio/dio.dart';

class DioInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final Map<String, dynamic> header = {};
    header["X-RapidAPI-Key"] =
        "5b09d713aemsh814d445b745b81cp1d4172jsne690ea8c40bd";
    header["X-RapidAPI-Host"] = "weatherbit-v1-mashape.p.rapidapi.com";
    options.headers.addAll(header);
    super.onRequest(options, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    // ErrorHandling.withError(error: err);
    super.onError(err, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);
  }
}
