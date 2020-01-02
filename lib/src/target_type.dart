import 'package:dio/dio.dart';

abstract class TargetType {
  String get baseUrl;
  String get path;
  HttpMethod get method;
  Map<String, String> get headers;
  Map<String, dynamic> get parameters;
  List<Interceptor> get interceptors;
}

class Network {
  static final Dio dio = Dio();
  // 配置Dio
  static void setupDio(TargetType targetType) {
    dio.interceptors.addAll(targetType.interceptors);
    dio.options.method = targetType.method.value;
  }

  static void request<T extends TargetType>(T targetType) async {
    setupDio(targetType);

    await dio.request(targetType.path, queryParameters: targetType.parameters);
  }
}

abstract class Enum<T> {
  final T _value;

  const Enum(this._value);

  T get value => _value;
}

class HttpMethod extends Enum<String> {
  const HttpMethod(String val) : super(val);

  static const HttpMethod GET = HttpMethod('GET');
  static const HttpMethod POST = HttpMethod('POST');
  static const HttpMethod PUT = HttpMethod('PUT');
  static const HttpMethod DELETE = HttpMethod('DELETE');
}
