// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zametki.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Zametki _$$_ZametkiFromJson(Map<String, dynamic> json) => _$_Zametki(
      id: json['id'] as int?,
      nomerzam: json['nomerzam'] as String?,
      namezam: json['namezam'] as String?,
      soderjanie: json['soderjanie'] as String?,
      kategor: json['kategor'] == null
          ? null
          : Kategor.fromJson(json['kategor'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_ZametkiToJson(_$_Zametki instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nomerzam': instance.nomerzam,
      'namezam': instance.namezam,
      'soderjanie': instance.soderjanie,
      'kategor': instance.kategor,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
