import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'kategor.freezed.dart';
part 'kategor.g.dart';

@freezed
class Kategor with _$Kategor{
  const factory Kategor({
    required int? id,
    required String namekategor,
  }) = _Kategor;

  factory Kategor.fromJson(Map<String,dynamic>json) => _$KategorFromJson(json);
}