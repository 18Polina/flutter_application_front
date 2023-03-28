import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../common/cubit/zametki/users_profile_cubit.dart';
import '../../common/url_page.dart';
import '../../utils/service_locator.dart';

class UserProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  GlobalKey<FormState> _key = GlobalKey();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  TextEditingController _loginController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
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
               Row( 
                  children:[
                    const SizedBox(width: 500,),
                     const Text("Ваш профиль",
                style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 0,35,35))),
            BlocProvider(
              create: (context) => ProfileCubit()..fetchUserProfile(),
              child: Center(
                child: BlocBuilder<ProfileCubit, ProfileState>(
                  builder: (context, state) {
                    if (state is ProfileFetchedState) {
                      print(state.user.username);
                      return Column(
                        children: [
                          Text("Имя пользователя: ${state.user.username}"),
                      const    SizedBox(
                            height: 25,
                          ),
                          Text("Email: ${state.user.email}"),
                        ],
                      );
                    }
                    return Container();
                  },
                ),
              ),
            ),
            ]),
     
             const SizedBox(
                height: 30,
              ),
            Padding(
              padding:const EdgeInsets.only(left: 450, right: 450),
              child: ElevatedButton(
                 style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
  ),
                child:const Text("Просмотреть все заметки", style: TextStyle(color: Color.fromARGB(255,0,35,35))),
                onPressed: () => {
                  Navigator.pushNamed(context, UrlPage.ZametkiPage)
                },
              ),
            ),
             const SizedBox(
                    height: 15,
                  ),
              Padding(
                  padding:const EdgeInsets.only(left: 450, right: 450),
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
          ]
          ),
        )
        )
          ),
    ) ;
  }

  void signOut() {
    ServiceLocator.getTokenProvider().forgetToken();
    Navigator.pushNamed(context, UrlPage.authPage);
  }
}
