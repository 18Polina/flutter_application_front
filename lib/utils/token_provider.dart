import 'package:shared_preferences/shared_preferences.dart';

class TokenProvider {
  String? token;

  TokenProvider() {
    _getToken();
  }

  Future<void> _getToken() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();

    token = sharedPreferences.getString("token");
  }

  void saveToken(String value) async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    sharedPreferences.setString("token", value);
  }

  void forgetToken() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    sharedPreferences.remove("token");
  }
}
