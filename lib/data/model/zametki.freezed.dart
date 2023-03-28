// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'zametki.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Zametki _$ZametkiFromJson(Map<String, dynamic> json) {
  return _Zametki.fromJson(json);
}

/// @nodoc
mixin _$Zametki {
  int? get id => throw _privateConstructorUsedError;
  String? get nomerzam => throw _privateConstructorUsedError;
  String? get namezam => throw _privateConstructorUsedError;
  String? get soderjanie => throw _privateConstructorUsedError;
  Kategor? get kategor => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ZametkiCopyWith<Zametki> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZametkiCopyWith<$Res> {
  factory $ZametkiCopyWith(Zametki value, $Res Function(Zametki) then) =
      _$ZametkiCopyWithImpl<$Res, Zametki>;
  @useResult
  $Res call(
      {int? id,
      String? nomerzam,
      String? namezam,
      String? soderjanie,
      Kategor? kategor,
      DateTime? createdAt,
      DateTime? updatedAt});

  $KategorCopyWith<$Res>? get kategor;
}

/// @nodoc
class _$ZametkiCopyWithImpl<$Res, $Val extends Zametki>
    implements $ZametkiCopyWith<$Res> {
  _$ZametkiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nomerzam = freezed,
    Object? namezam = freezed,
    Object? soderjanie = freezed,
    Object? kategor = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      nomerzam: freezed == nomerzam
          ? _value.nomerzam
          : nomerzam // ignore: cast_nullable_to_non_nullable
              as String?,
      namezam: freezed == namezam
          ? _value.namezam
          : namezam // ignore: cast_nullable_to_non_nullable
              as String?,
      soderjanie: freezed == soderjanie
          ? _value.soderjanie
          : soderjanie // ignore: cast_nullable_to_non_nullable
              as String?,
      kategor: freezed == kategor
          ? _value.kategor
          : kategor // ignore: cast_nullable_to_non_nullable
              as Kategor?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $KategorCopyWith<$Res>? get kategor {
    if (_value.kategor == null) {
      return null;
    }

    return $KategorCopyWith<$Res>(_value.kategor!, (value) {
      return _then(_value.copyWith(kategor: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ZametkiCopyWith<$Res> implements $ZametkiCopyWith<$Res> {
  factory _$$_ZametkiCopyWith(
          _$_Zametki value, $Res Function(_$_Zametki) then) =
      __$$_ZametkiCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? nomerzam,
      String? namezam,
      String? soderjanie,
      Kategor? kategor,
      DateTime? createdAt,
      DateTime? updatedAt});

  @override
  $KategorCopyWith<$Res>? get kategor;
}

/// @nodoc
class __$$_ZametkiCopyWithImpl<$Res>
    extends _$ZametkiCopyWithImpl<$Res, _$_Zametki>
    implements _$$_ZametkiCopyWith<$Res> {
  __$$_ZametkiCopyWithImpl(_$_Zametki _value, $Res Function(_$_Zametki) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nomerzam = freezed,
    Object? namezam = freezed,
    Object? soderjanie = freezed,
    Object? kategor = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_Zametki(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      nomerzam: freezed == nomerzam
          ? _value.nomerzam
          : nomerzam // ignore: cast_nullable_to_non_nullable
              as String?,
      namezam: freezed == namezam
          ? _value.namezam
          : namezam // ignore: cast_nullable_to_non_nullable
              as String?,
      soderjanie: freezed == soderjanie
          ? _value.soderjanie
          : soderjanie // ignore: cast_nullable_to_non_nullable
              as String?,
      kategor: freezed == kategor
          ? _value.kategor
          : kategor // ignore: cast_nullable_to_non_nullable
              as Kategor?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Zametki with DiagnosticableTreeMixin implements _Zametki {
  const _$_Zametki(
      {this.id,
      this.nomerzam,
      this.namezam,
      this.soderjanie,
      this.kategor,
      this.createdAt,
      this.updatedAt});

  factory _$_Zametki.fromJson(Map<String, dynamic> json) =>
      _$$_ZametkiFromJson(json);

  @override
  final int? id;
  @override
  final String? nomerzam;
  @override
  final String? namezam;
  @override
  final String? soderjanie;
  @override
  final Kategor? kategor;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Zametki(id: $id, nomerzam: $nomerzam, namezam: $namezam, soderjanie: $soderjanie, kategor: $kategor, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Zametki'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('nomerzam', nomerzam))
      ..add(DiagnosticsProperty('namezam', namezam))
      ..add(DiagnosticsProperty('soderjanie', soderjanie))
      ..add(DiagnosticsProperty('kategor', kategor))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Zametki &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nomerzam, nomerzam) ||
                other.nomerzam == nomerzam) &&
            (identical(other.namezam, namezam) || other.namezam == namezam) &&
            (identical(other.soderjanie, soderjanie) ||
                other.soderjanie == soderjanie) &&
            (identical(other.kategor, kategor) || other.kategor == kategor) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, nomerzam, namezam,
      soderjanie, kategor, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ZametkiCopyWith<_$_Zametki> get copyWith =>
      __$$_ZametkiCopyWithImpl<_$_Zametki>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ZametkiToJson(
      this,
    );
  }
}

abstract class _Zametki implements Zametki {
  const factory _Zametki(
      {final int? id,
      final String? nomerzam,
      final String? namezam,
      final String? soderjanie,
      final Kategor? kategor,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$_Zametki;

  factory _Zametki.fromJson(Map<String, dynamic> json) = _$_Zametki.fromJson;

  @override
  int? get id;
  @override
  String? get nomerzam;
  @override
  String? get namezam;
  @override
  String? get soderjanie;
  @override
  Kategor? get kategor;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_ZametkiCopyWith<_$_Zametki> get copyWith =>
      throw _privateConstructorUsedError;
}
