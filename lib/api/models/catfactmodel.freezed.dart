// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catfactmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CatFactModel _$CatFactModelFromJson(Map<String, dynamic> json) {
  return _CatFactModel.fromJson(json);
}

/// @nodoc
mixin _$CatFactModel {
  String get fact => throw _privateConstructorUsedError;
  int get length => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatFactModelCopyWith<CatFactModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatFactModelCopyWith<$Res> {
  factory $CatFactModelCopyWith(
          CatFactModel value, $Res Function(CatFactModel) then) =
      _$CatFactModelCopyWithImpl<$Res, CatFactModel>;
  @useResult
  $Res call({String fact, int length});
}

/// @nodoc
class _$CatFactModelCopyWithImpl<$Res, $Val extends CatFactModel>
    implements $CatFactModelCopyWith<$Res> {
  _$CatFactModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fact = null,
    Object? length = null,
  }) {
    return _then(_value.copyWith(
      fact: null == fact
          ? _value.fact
          : fact // ignore: cast_nullable_to_non_nullable
              as String,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CatFactModelCopyWith<$Res>
    implements $CatFactModelCopyWith<$Res> {
  factory _$$_CatFactModelCopyWith(
          _$_CatFactModel value, $Res Function(_$_CatFactModel) then) =
      __$$_CatFactModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String fact, int length});
}

/// @nodoc
class __$$_CatFactModelCopyWithImpl<$Res>
    extends _$CatFactModelCopyWithImpl<$Res, _$_CatFactModel>
    implements _$$_CatFactModelCopyWith<$Res> {
  __$$_CatFactModelCopyWithImpl(
      _$_CatFactModel _value, $Res Function(_$_CatFactModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fact = null,
    Object? length = null,
  }) {
    return _then(_$_CatFactModel(
      fact: null == fact
          ? _value.fact
          : fact // ignore: cast_nullable_to_non_nullable
              as String,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CatFactModel implements _CatFactModel {
  _$_CatFactModel({required this.fact, required this.length});

  factory _$_CatFactModel.fromJson(Map<String, dynamic> json) =>
      _$$_CatFactModelFromJson(json);

  @override
  final String fact;
  @override
  final int length;

  @override
  String toString() {
    return 'CatFactModel(fact: $fact, length: $length)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CatFactModel &&
            (identical(other.fact, fact) || other.fact == fact) &&
            (identical(other.length, length) || other.length == length));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fact, length);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CatFactModelCopyWith<_$_CatFactModel> get copyWith =>
      __$$_CatFactModelCopyWithImpl<_$_CatFactModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CatFactModelToJson(
      this,
    );
  }
}

abstract class _CatFactModel implements CatFactModel {
  factory _CatFactModel(
      {required final String fact,
      required final int length}) = _$_CatFactModel;

  factory _CatFactModel.fromJson(Map<String, dynamic> json) =
      _$_CatFactModel.fromJson;

  @override
  String get fact;
  @override
  int get length;
  @override
  @JsonKey(ignore: true)
  _$$_CatFactModelCopyWith<_$_CatFactModel> get copyWith =>
      throw _privateConstructorUsedError;
}
