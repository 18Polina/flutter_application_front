// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kategor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Kategor _$KategorFromJson(Map<String, dynamic> json) {
  return _Kategor.fromJson(json);
}

/// @nodoc
mixin _$Kategor {
  int? get id => throw _privateConstructorUsedError;
  String get namekategor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KategorCopyWith<Kategor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KategorCopyWith<$Res> {
  factory $KategorCopyWith(Kategor value, $Res Function(Kategor) then) =
      _$KategorCopyWithImpl<$Res, Kategor>;
  @useResult
  $Res call({int? id, String namekategor});
}

/// @nodoc
class _$KategorCopyWithImpl<$Res, $Val extends Kategor>
    implements $KategorCopyWith<$Res> {
  _$KategorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? namekategor = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      namekategor: null == namekategor
          ? _value.namekategor
          : namekategor // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_KategorCopyWith<$Res> implements $KategorCopyWith<$Res> {
  factory _$$_KategorCopyWith(
          _$_Kategor value, $Res Function(_$_Kategor) then) =
      __$$_KategorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String namekategor});
}

/// @nodoc
class __$$_KategorCopyWithImpl<$Res>
    extends _$KategorCopyWithImpl<$Res, _$_Kategor>
    implements _$$_KategorCopyWith<$Res> {
  __$$_KategorCopyWithImpl(_$_Kategor _value, $Res Function(_$_Kategor) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? namekategor = null,
  }) {
    return _then(_$_Kategor(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      namekategor: null == namekategor
          ? _value.namekategor
          : namekategor // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Kategor with DiagnosticableTreeMixin implements _Kategor {
  const _$_Kategor({required this.id, required this.namekategor});

  factory _$_Kategor.fromJson(Map<String, dynamic> json) =>
      _$$_KategorFromJson(json);

  @override
  final int? id;
  @override
  final String namekategor;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Kategor(id: $id, namekategor: $namekategor)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Kategor'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('namekategor', namekategor));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Kategor &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.namekategor, namekategor) ||
                other.namekategor == namekategor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, namekategor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KategorCopyWith<_$_Kategor> get copyWith =>
      __$$_KategorCopyWithImpl<_$_Kategor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KategorToJson(
      this,
    );
  }
}

abstract class _Kategor implements Kategor {
  const factory _Kategor(
      {required final int? id, required final String namekategor}) = _$_Kategor;

  factory _Kategor.fromJson(Map<String, dynamic> json) = _$_Kategor.fromJson;

  @override
  int? get id;
  @override
  String get namekategor;
  @override
  @JsonKey(ignore: true)
  _$$_KategorCopyWith<_$_Kategor> get copyWith =>
      throw _privateConstructorUsedError;
}
