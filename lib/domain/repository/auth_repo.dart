import 'package:dio/dio.dart';

import '../../common/app_config.dart';
import '../../data/model/user.dart';

abstract class AuthorizationRepository {
  Future<bool> logIn(String username, String email, String password);

  Future<bool> register(User user);
  Future<bool> refreshToken(String value);
}
