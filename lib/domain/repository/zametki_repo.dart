import 'package:flutter_application_4/data/model/zametki.dart';

abstract class ZametkiRepository{
  Future<List<Zametki>> getZametki();
   Future<Zametki> getZametka();
   Future<void> insertZametki(Zametki zametki);
}