import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../common/app_config.dart';
import '../../domain/repository/zametki_repo.dart';
import '../model/zametki.dart';

class ZametkiRepositoryImpl implements ZametkiRepository {

  @override
  Future<Zametki> getZametka() {
    // TODO: implement getFinanceOperation
    throw UnimplementedError();
  }

  @override
  Future<List<Zametki>> getZametki() async {
    //String? token = ServiceLocator.getTokenProvider().token;
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    String? token = sharedPreferences.getString("token");

    final dio = Dio(
      BaseOptions(
        headers: {
          "Authorization": "Bearer $token",
        },
        validateStatus: (status) => true,
      ),
    );
    Response response = await dio.get("${AppConfig.baseApiURL}/notes");
    if (response.statusCode != 200) {
      return [];
    }

    final jsonList = response.data as List<dynamic>;
    return jsonList.map((e) => Zametki.fromJson(e)).toList();
  }
  
  @override
  Future<bool>  insertZametki(Zametki zametki) async{
   final data = zametki.toJson();
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    String? token = sharedPreferences.getString("token");
    final dio = Dio(
      BaseOptions(
        headers: {
          "Authorization": "Bearer $token",
        },
        validateStatus: (status) => true,
      ),
    );
    Response response = await dio.post("${AppConfig.baseApiURL}/notes",
    data: data);
    if (response.statusCode != 200) {
      return false;
    }
    final jsonList = response.data as List<dynamic>;
    print(jsonList);

    return true;
  }
}
