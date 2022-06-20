// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'example_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _ExampleService implements ExampleService {
  _ExampleService(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<BaseModel> getData({required lat, required lon}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'lat': lat, r'lon': lon};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BaseModel>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options,
                    'https://weatherbit-v1-mashape.p.rapidapi.com/current',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = BaseModel.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
