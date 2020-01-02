class API {
  API(this.path, {this.params});

  final String path;
  final Map<String, dynamic> params;

  static const base = 'http://zhaogegong.beituokj.com/api';

  static const home = '/home';
  static const login = '/login';

  static final loginAPI =
      API(login, params: {'user_phone': '13581850764', 'user_pwd': '123'});
}
