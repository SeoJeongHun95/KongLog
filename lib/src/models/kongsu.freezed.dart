// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kongsu.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Kongsu {
  @HiveField(0)
  DateTime get day => throw _privateConstructorUsedError;
  @HiveField(1)
  Company get company => throw _privateConstructorUsedError;
  @HiveField(2)
  double get kongsuUnit => throw _privateConstructorUsedError;
  @HiveField(3)
  bool get mealCheck => throw _privateConstructorUsedError;
  @HiveField(4)
  String get memo => throw _privateConstructorUsedError;

  /// Create a copy of Kongsu
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KongsuCopyWith<Kongsu> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KongsuCopyWith<$Res> {
  factory $KongsuCopyWith(Kongsu value, $Res Function(Kongsu) then) =
      _$KongsuCopyWithImpl<$Res, Kongsu>;
  @useResult
  $Res call(
      {@HiveField(0) DateTime day,
      @HiveField(1) Company company,
      @HiveField(2) double kongsuUnit,
      @HiveField(3) bool mealCheck,
      @HiveField(4) String memo});

  $CompanyCopyWith<$Res> get company;
}

/// @nodoc
class _$KongsuCopyWithImpl<$Res, $Val extends Kongsu>
    implements $KongsuCopyWith<$Res> {
  _$KongsuCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Kongsu
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? company = null,
    Object? kongsuUnit = null,
    Object? mealCheck = null,
    Object? memo = null,
  }) {
    return _then(_value.copyWith(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as DateTime,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as Company,
      kongsuUnit: null == kongsuUnit
          ? _value.kongsuUnit
          : kongsuUnit // ignore: cast_nullable_to_non_nullable
              as double,
      mealCheck: null == mealCheck
          ? _value.mealCheck
          : mealCheck // ignore: cast_nullable_to_non_nullable
              as bool,
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of Kongsu
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CompanyCopyWith<$Res> get company {
    return $CompanyCopyWith<$Res>(_value.company, (value) {
      return _then(_value.copyWith(company: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$KongsuImplCopyWith<$Res> implements $KongsuCopyWith<$Res> {
  factory _$$KongsuImplCopyWith(
          _$KongsuImpl value, $Res Function(_$KongsuImpl) then) =
      __$$KongsuImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) DateTime day,
      @HiveField(1) Company company,
      @HiveField(2) double kongsuUnit,
      @HiveField(3) bool mealCheck,
      @HiveField(4) String memo});

  @override
  $CompanyCopyWith<$Res> get company;
}

/// @nodoc
class __$$KongsuImplCopyWithImpl<$Res>
    extends _$KongsuCopyWithImpl<$Res, _$KongsuImpl>
    implements _$$KongsuImplCopyWith<$Res> {
  __$$KongsuImplCopyWithImpl(
      _$KongsuImpl _value, $Res Function(_$KongsuImpl) _then)
      : super(_value, _then);

  /// Create a copy of Kongsu
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? company = null,
    Object? kongsuUnit = null,
    Object? mealCheck = null,
    Object? memo = null,
  }) {
    return _then(_$KongsuImpl(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as DateTime,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as Company,
      kongsuUnit: null == kongsuUnit
          ? _value.kongsuUnit
          : kongsuUnit // ignore: cast_nullable_to_non_nullable
              as double,
      mealCheck: null == mealCheck
          ? _value.mealCheck
          : mealCheck // ignore: cast_nullable_to_non_nullable
              as bool,
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$KongsuImpl implements _Kongsu {
  _$KongsuImpl(
      {@HiveField(0) required this.day,
      @HiveField(1) required this.company,
      @HiveField(2) required this.kongsuUnit,
      @HiveField(3) required this.mealCheck,
      @HiveField(4) required this.memo});

  @override
  @HiveField(0)
  final DateTime day;
  @override
  @HiveField(1)
  final Company company;
  @override
  @HiveField(2)
  final double kongsuUnit;
  @override
  @HiveField(3)
  final bool mealCheck;
  @override
  @HiveField(4)
  final String memo;

  @override
  String toString() {
    return 'Kongsu(day: $day, company: $company, kongsuUnit: $kongsuUnit, mealCheck: $mealCheck, memo: $memo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KongsuImpl &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.kongsuUnit, kongsuUnit) ||
                other.kongsuUnit == kongsuUnit) &&
            (identical(other.mealCheck, mealCheck) ||
                other.mealCheck == mealCheck) &&
            (identical(other.memo, memo) || other.memo == memo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, day, company, kongsuUnit, mealCheck, memo);

  /// Create a copy of Kongsu
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KongsuImplCopyWith<_$KongsuImpl> get copyWith =>
      __$$KongsuImplCopyWithImpl<_$KongsuImpl>(this, _$identity);
}

abstract class _Kongsu implements Kongsu {
  factory _Kongsu(
      {@HiveField(0) required final DateTime day,
      @HiveField(1) required final Company company,
      @HiveField(2) required final double kongsuUnit,
      @HiveField(3) required final bool mealCheck,
      @HiveField(4) required final String memo}) = _$KongsuImpl;

  @override
  @HiveField(0)
  DateTime get day;
  @override
  @HiveField(1)
  Company get company;
  @override
  @HiveField(2)
  double get kongsuUnit;
  @override
  @HiveField(3)
  bool get mealCheck;
  @override
  @HiveField(4)
  String get memo;

  /// Create a copy of Kongsu
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KongsuImplCopyWith<_$KongsuImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
