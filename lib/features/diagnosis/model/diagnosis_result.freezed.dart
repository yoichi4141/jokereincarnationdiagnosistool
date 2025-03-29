// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diagnosis_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DiagnosisResult _$DiagnosisResultFromJson(Map<String, dynamic> json) {
  return _DiagnosisResult.fromJson(json);
}

/// @nodoc
mixin _$DiagnosisResult {
  String get name => throw _privateConstructorUsedError; // 診断した名前
  String get result => throw _privateConstructorUsedError; // 前世のジョーク診断結果
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this DiagnosisResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DiagnosisResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DiagnosisResultCopyWith<DiagnosisResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiagnosisResultCopyWith<$Res> {
  factory $DiagnosisResultCopyWith(
    DiagnosisResult value,
    $Res Function(DiagnosisResult) then,
  ) = _$DiagnosisResultCopyWithImpl<$Res, DiagnosisResult>;
  @useResult
  $Res call({String name, String result, DateTime createdAt});
}

/// @nodoc
class _$DiagnosisResultCopyWithImpl<$Res, $Val extends DiagnosisResult>
    implements $DiagnosisResultCopyWith<$Res> {
  _$DiagnosisResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DiagnosisResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? result = null,
    Object? createdAt = null,
  }) {
    return _then(
      _value.copyWith(
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            result:
                null == result
                    ? _value.result
                    : result // ignore: cast_nullable_to_non_nullable
                        as String,
            createdAt:
                null == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DiagnosisResultImplCopyWith<$Res>
    implements $DiagnosisResultCopyWith<$Res> {
  factory _$$DiagnosisResultImplCopyWith(
    _$DiagnosisResultImpl value,
    $Res Function(_$DiagnosisResultImpl) then,
  ) = __$$DiagnosisResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String result, DateTime createdAt});
}

/// @nodoc
class __$$DiagnosisResultImplCopyWithImpl<$Res>
    extends _$DiagnosisResultCopyWithImpl<$Res, _$DiagnosisResultImpl>
    implements _$$DiagnosisResultImplCopyWith<$Res> {
  __$$DiagnosisResultImplCopyWithImpl(
    _$DiagnosisResultImpl _value,
    $Res Function(_$DiagnosisResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DiagnosisResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? result = null,
    Object? createdAt = null,
  }) {
    return _then(
      _$DiagnosisResultImpl(
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        result:
            null == result
                ? _value.result
                : result // ignore: cast_nullable_to_non_nullable
                    as String,
        createdAt:
            null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DiagnosisResultImpl implements _DiagnosisResult {
  const _$DiagnosisResultImpl({
    required this.name,
    required this.result,
    required this.createdAt,
  });

  factory _$DiagnosisResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiagnosisResultImplFromJson(json);

  @override
  final String name;
  // 診断した名前
  @override
  final String result;
  // 前世のジョーク診断結果
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'DiagnosisResult(name: $name, result: $result, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiagnosisResultImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, result, createdAt);

  /// Create a copy of DiagnosisResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiagnosisResultImplCopyWith<_$DiagnosisResultImpl> get copyWith =>
      __$$DiagnosisResultImplCopyWithImpl<_$DiagnosisResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DiagnosisResultImplToJson(this);
  }
}

abstract class _DiagnosisResult implements DiagnosisResult {
  const factory _DiagnosisResult({
    required final String name,
    required final String result,
    required final DateTime createdAt,
  }) = _$DiagnosisResultImpl;

  factory _DiagnosisResult.fromJson(Map<String, dynamic> json) =
      _$DiagnosisResultImpl.fromJson;

  @override
  String get name; // 診断した名前
  @override
  String get result; // 前世のジョーク診断結果
  @override
  DateTime get createdAt;

  /// Create a copy of DiagnosisResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiagnosisResultImplCopyWith<_$DiagnosisResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
