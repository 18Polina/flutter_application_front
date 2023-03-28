
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/data/model/user.dart';
import 'package:flutter_application_4/data/model/zametki.dart';

import '../../common/url_page.dart';
import '../../data/model/kategor.dart';
import '../../data/repository/zametki_repo._impl.dart';

class AddZametki extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AddZametkiState();
}

class _AddZametkiState extends State<AddZametki> {
  GlobalKey<FormState> _key = GlobalKey();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _numberController = TextEditingController();
  TextEditingController _soderjController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255,91,89,81),
        body: Center(
      child: Container(
        child: Form(
          key: _key,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30,),
              const Text(
                "Добавление записки",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 0,35,35)),
              ),
           const   SizedBox( height: 20,),
              Container(
                width: 400,
                child: TextFormField(
                  controller: _nameController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Поле  пустое';
                    }
                    return null;
                  },
                  maxLength: 10,
                  decoration: const InputDecoration(
                    labelText: 'Название',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
             const SizedBox( height: 20,),
              Container(
                width: 400,
                child: TextFormField(
                  controller: _numberController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Поле  пустое';
                    }
                    return null;
                  },
                  maxLength: 10,
                  decoration: const InputDecoration(
                    labelText: 'Номер',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
           const   SizedBox( height: 20,),
              Container(
                width: 400,
                child: TextFormField(
                  controller: _soderjController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Поле  пустое';
                    }
                    return null;
                  },
                  maxLength: 30,
                  decoration: const InputDecoration(
                    labelText: 'Контент',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
             const SizedBox( height: 20,),
              Container(
                width: 150,
                height: 30,             
                child: TextButton(
                   style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
  ),
                  child:const Text("Добавить заметку", style: TextStyle(color: Color.fromARGB(255,0,35,35))),
                  onPressed: () => {
                    if (_key.currentState!.validate())
                      {
                        register(_nameController.text,_numberController.text,_soderjController.text),
                        _nameController.clear(),
                        _numberController.clear(),
                        _soderjController.clear(),
                      },
                  },
                ),
              ),
           const   SizedBox( height: 20,),
              Container(
                width: 150,
                height: 30,  
                child: TextButton(
                   style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
  ),
                  child:const Text("Назад", style: TextStyle(color: Color.fromARGB(255,0,35,35))),
                  onPressed: () => {
                    Navigator.pushNamed(context, UrlPage.userProfilePage)
},
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }


  Future<void> register(String name, String number, String content) async {
    Map<String, dynamic> json = {"id": 1};
    bool result = await ZametkiRepositoryImpl()
        .insertZametki(Zametki(
        nomerzam: number,
        namezam: name,
        soderjanie: content,
        kategor:  Kategor.fromJson(json),
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
       ));
    if (result) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Успешное добавление"),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Не удалось добавить"),
        ),
      );
    }
  }
}