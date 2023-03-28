import 'package:flutter/material.dart';
import '../../common/url_page.dart';
import '../../data/repository/auth_repo_impl.dart';

class AvthorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AvthorPageState();
}

class _AvthorPageState extends State<AvthorPage> {
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
        padding: EdgeInsets.all(30),
        child: Form(
          key: _key,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 30,
              ),
              const Text(  "Авторизация",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 40, color: Color.fromARGB(255, 0,35,35)),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
               height: 80,
               width: 10,
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
                    labelText: 'Логин',
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
                    if (value.length < 5) {
                      return 'Пароль должен содержать не менее 5 символов';
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
               const SizedBox(
                height: 30,
              ),
                Padding(
                  padding:  const EdgeInsets.only(left: 500, right: 500),
                  child:  Container(
                    width: 50,
                    child: ElevatedButton(
                      style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
  ),
                      child:  const Text("Авторизироваться", style: TextStyle(color: Color.fromARGB(255,0,35,35)),),
                      onPressed: () => {
                        _isValid = true,
                        if (_key.currentState!.validate()) {avtor()}
                      },
                    ),
                  )),
                  const SizedBox(
                    height: 15,
                  ),
              Padding(
                  padding:const EdgeInsets.only(left: 500, right: 500),
                child: ElevatedButton(
                      style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
  ),                   
                    child: const Text("Регистрация", style: TextStyle(color: Color.fromARGB(255,0,35,35)),),
                    onPressed: () => {
                      _loginController.clear(),
                      _passwordController.clear(),
                       _emailController.clear(),
                      _isValid = false,
                      _key.currentState!.validate(),
                      Navigator.pushNamed(context, UrlPage.registerPage),
                    },
                  ))
            ],
          ),
        ),
      )),
    );
  }

  Future<void> avtor() async {
    try {
      bool result = await AuthorizationRepositoryImpl()
          .logIn(_loginController.text,_emailController.text, _passwordController.text);
      if (result) {
        _loginController.clear();
        _passwordController.clear();
         _emailController.clear();
        Navigator.pushNamed(context, UrlPage.userProfilePage);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text("Не правильно введен логин или пароль"),
          ),
        );
      }
    } catch (error) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Ошибка"),
        ),
      );
    }
  }
}
