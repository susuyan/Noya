import 'package:dio/src/interceptor.dart';
import 'package:noya/src/target_type.dart';

import 'api.dart';


class CraftTarget extends TargetType {
  CraftTarget(this.api);
  final API api;

  @override
  String get baseUrl => API.base;

  @override
  Map<String, String> get headers => {};

  @override
  Map<String, dynamic> get parameters =>
      api.params.isNotEmpty ? api.params : {};

  @override
  String get path => API.base + api.path;

  @override
  HttpMethod get method {
    switch (api.path) {
      case API.login:
        return HttpMethod.POST;
      default:
        return HttpMethod.GET;
    }
  }

  @override
  List<Interceptor> get interceptors => null;

  

}