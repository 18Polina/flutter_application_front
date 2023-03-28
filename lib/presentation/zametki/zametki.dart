import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../common/cubit/zametki/zametka_cubit.dart';
import '../../common/url_page.dart';

class ZametkiPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ZametkiPageState();
}

class _ZametkiPageState extends State<ZametkiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color.fromARGB(255,91,89,81),
      body: Center(
          child:
            BlocProvider(
        create: (context) => ZametkiCubit()..fetchZametki(),
        child: Center(
          child: BlocBuilder<ZametkiCubit, ZametkiState>(
            builder: (context, state) {
              if (state is ZametkiFetchedState) {
                return ListView.builder(
                    itemCount: state.zametki.length,
                    itemBuilder: ((context, index) {
                      final zametki = state.zametki[index];
                      return Column(
                        children:[ 
                          
                          Row(children: [ 
                          const SizedBox(height: 10,),
                          const Text("Данные об заметке",
                style: TextStyle(fontSize: 25, color: Color.fromARGB(255, 0,35,35))),
                const SizedBox(height: 30, width: 15,),
                          Text(
                            "Номер заметки № ${zametki.nomerzam}",
                            style: const TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 253,238,211)
                            ),
                          ),
                             const SizedBox(height: 30, width: 15,),
                          Text(
                            "Название заметки: ${zametki.namezam}",
                           style: const TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 253,238,211)
                            ),
                          ),
                             const SizedBox(height: 30, width: 45,),
                          Text(
                            "Содержание: ${zametki.soderjanie}",
                           style: const TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 253,238,211)
                            ),
                          ), 
                            const SizedBox(height: 30, width: 15,),
                          Text(
                            "Категория: ${zametki.kategor!.namekategor}",
                           style: const TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 253,238,211)
                            ),
                          ),
                            const SizedBox(height: 30, width: 30,),
                           ElevatedButton(
                             style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),),
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, UrlPage.userProfilePage);
                              },
                              child: const Text("Назад", style: TextStyle(color: Color.fromARGB(255,0,35,35)))),
                     const     SizedBox(
                            height: 25,
                          ),
                        ]
                        ),
                       
                    ]  );
                    }));
              }

              return Container();
            },
          ),
        ),
      )
      ),
    );
  }
}
