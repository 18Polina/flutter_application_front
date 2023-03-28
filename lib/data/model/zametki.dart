import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'kategor.dart';

part 'zametki.freezed.dart';
part 'zametki.g.dart';

@freezed
class Zametki with _$Zametki{
  const factory Zametki({
  int? id,
  String? nomerzam,
  String? namezam,
  String? soderjanie,
  Kategor? kategor,
   DateTime? createdAt,
   DateTime? updatedAt,


  }) = _Zametki;

  factory Zametki.fromJson(Map<String,dynamic>json) => _$ZametkiFromJson(json);
}