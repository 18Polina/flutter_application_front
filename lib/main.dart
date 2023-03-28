import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/presentation/auth/avtor_page.dart';
import 'package:flutter_application_4/presentation/auth/reg_page.dart';
import 'package:flutter_application_4/presentation/user/user_profile.dart';
import 'package:flutter_application_4/presentation/zametki/add_zametki.dart';
import 'package:flutter_application_4/presentation/zametki/zametki.dart';
import 'package:flutter_application_4/utils/service_locator.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'common/url_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    var token = ServiceLocator.getTokenProvider().token;

    return MaterialApp(
      initialRoute: token == null ? UrlPage.authPage : UrlPage.userProfilePage,
      routes: {
        UrlPage.authPage: (context) => AvthorPage(),
        UrlPage.ZametkiPage: (context) => ZametkiPage(),
        UrlPage.registerPage: (context) => RegPage(),
        UrlPage.userProfilePage: (context) => UserProfilePage(),
         UrlPage.addZam: (context) => AddZametki()
      },
    );
  }
}
