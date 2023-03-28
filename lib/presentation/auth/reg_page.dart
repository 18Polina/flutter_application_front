import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/data/model/user.dart';

import '../../common/url_page.dart';
import '../../data/repository/auth_repo_impl.dart';

class RegPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RegPageState();
}

class RegPageState extends State<RegPage> {
  GlobalKey<FormState> _key = GlobalKey();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  TextEditingController _loginController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _emailController = TextEditingController();

  bool isObscure = true;
  bool _isValid = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color.fromARGB(255,91,89,81),
      body: SafeArea(
          child: Padding(
        padding:const EdgeInsets.all(30),
        child: Form(
          key: _key,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
               const SizedBox(
                height: 30,
              ),
              const Text(
                "Зарегистрироваться",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 40, color: Color.fromARGB(255, 0,35,35)),
              ),
               const SizedBox(
                height: 30,
              ),
              SizedBox(
                child: TextFormField(
                  controller: _loginController,
                  validator: (value) {
                    if (!_isValid) {
                      return null;
                    }
                    if (value!.isEmpty) {
                      return 'Поле логин пустое';
                    }
                    if (value.length < 6) {
                      return 'Логин должен содержать не менее 6 символов';
                    }
                    return null;
                  },
                  maxLength: 10,
                  decoration: const InputDecoration(
                    labelText: 'Имя пользователя',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
               const SizedBox(
                height: 10,
              ),
              SizedBox(
                child: TextFormField(
                  controller: _emailController,
                  validator: (value) {
                    if (!_isValid) {
                      return null;
                    }
                    if (value!.isEmpty) {
                      return 'Поле email пустое';
                    }
                    if (value.length < 7) {
                      return 'Email должен содержать не менее 7 символов';
                    }
                    return null;
                  },
                  maxLength: 16,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
                 const SizedBox(
                height: 10,
              ),
              SizedBox(
                child: TextFormField(
                  controller: _passwordController,
                  validator: (value) {
                    if (!_isValid) {
                      return null;
                    }
                    if (value!.isEmpty) {
                      return 'Поле пароль пустое';
                    }
                    if (value.length < 6) {
                      return 'Пароль должен содержать не менее 6 символов';
                    }
                    return null;
                  },
                  maxLength: 10,
                  decoration: const InputDecoration(
                    labelText: 'Пароль',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                  padding:const EdgeInsets.only(left: 500, right: 500),
                  child: ElevatedButton(
                     style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
  ),
                    child:const Text("Зарегистрироваться", style: TextStyle(color: Color.fromARGB(255,0,35,35))),
                    onPressed: () => {
                      _isValid = true,
                      if (_key.currentState!.validate())
                        {
                          reg(),
                          _loginController.clear(),
                          _emailController.clear(),
                          _passwordController.clear(),
                        },
                    },
                  )),
                 const SizedBox(
                    height: 15,
                  ),
              Padding(
                  padding:const EdgeInsets.only(left: 500, right: 500),
                  child: ElevatedButton(
                     style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),),
                    child:const Text("Авторизация", style: TextStyle(color: Color.fromARGB(255,0,35,35))),
                    onPressed: () => {
                      Navigator.pushNamed(context, UrlPage.authPage),
                      _loginController.clear(),
                      _emailController.clear(),
                      _passwordController.clear(),
                    },
                  )
                  ),
            ],
          ),
        ),
      )),
    );
  }

  Future<void> reg() async {
    User user = User(username: _loginController.text, email: _emailController.text, password: _passwordController.text);
    
    bool result = await AuthorizationRepositoryImpl().register(user);
   
    if (result) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text("Успешная регистрация"),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text("Не удалось зарегистрироваться"),
        ),
      );
    }
  }
}
