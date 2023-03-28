import 'package:dio/dio.dart';
import '../../common/app_config.dart';
import '../../domain/repository/auth_repo.dart';
import '../../utils/service_locator.dart';
import '../model/user.dart';

class AuthorizationRepositoryImpl implements AuthorizationRepository {

  @override
  Future<bool> logIn(String username, String email, String password) async {
    Response response = await Dio().post('${AppConfig.baseApiURL}/token',
        data: User(username: username, email: email, password: password).toJson());
    if (response.statusCode == 200) {
      ServiceLocator.getTokenProvider()
          .saveToken(response.data['data']['accessToken']);
      return true;
    } else {
      return false;
    }
  }

  @override
  Future<bool> register(User user) async {
    Response response =
        await Dio().put('${AppConfig.baseApiURL}/token', data: user.toJson());
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }
  
  @override
  Future<bool> refreshToken(String value) async{
    Response response =
        await Dio().post("${AppConfig.baseApiURL}/token/$value");
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }
}
