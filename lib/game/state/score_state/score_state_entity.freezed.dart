// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'score_state_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScoreStateEntity {
  int get enemyKilled => throw _privateConstructorUsedError;
  int get timeSpent => throw _privateConstructorUsedError;

  /// Create a copy of ScoreStateEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScoreStateEntityCopyWith<ScoreStateEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoreStateEntityCopyWith<$Res> {
  factory $ScoreStateEntityCopyWith(
          ScoreStateEntity value, $Res Function(ScoreStateEntity) then) =
      _$ScoreStateEntityCopyWithImpl<$Res, ScoreStateEntity>;
  @useResult
  $Res call({int enemyKilled, int timeSpent});
}

/// @nodoc
class _$ScoreStateEntityCopyWithImpl<$Res, $Val extends ScoreStateEntity>
    implements $ScoreStateEntityCopyWith<$Res> {
  _$ScoreStateEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScoreStateEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enemyKilled = null,
    Object? timeSpent = null,
  }) {
    return _then(_value.copyWith(
      enemyKilled: null == enemyKilled
          ? _value.enemyKilled
          : enemyKilled // ignore: cast_nullable_to_non_nullable
              as int,
      timeSpent: null == timeSpent
          ? _value.timeSpent
          : timeSpent // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScoreStateEntityImplCopyWith<$Res>
    implements $ScoreStateEntityCopyWith<$Res> {
  factory _$$ScoreStateEntityImplCopyWith(_$ScoreStateEntityImpl value,
          $Res Function(_$ScoreStateEntityImpl) then) =
      __$$ScoreStateEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int enemyKilled, int timeSpent});
}

/// @nodoc
class __$$ScoreStateEntityImplCopyWithImpl<$Res>
    extends _$ScoreStateEntityCopyWithImpl<$Res, _$ScoreStateEntityImpl>
    implements _$$ScoreStateEntityImplCopyWith<$Res> {
  __$$ScoreStateEntityImplCopyWithImpl(_$ScoreStateEntityImpl _value,
      $Res Function(_$ScoreStateEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScoreStateEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enemyKilled = null,
    Object? timeSpent = null,
  }) {
    return _then(_$ScoreStateEntityImpl(
      enemyKilled: null == enemyKilled
          ? _value.enemyKilled
          : enemyKilled // ignore: cast_nullable_to_non_nullable
              as int,
      timeSpent: null == timeSpent
          ? _value.timeSpent
          : timeSpent // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ScoreStateEntityImpl implements _ScoreStateEntity {
  const _$ScoreStateEntityImpl(
      {required this.enemyKilled, required this.timeSpent});

  @override
  final int enemyKilled;
  @override
  final int timeSpent;

  @override
  String toString() {
    return 'ScoreStateEntity(enemyKilled: $enemyKilled, timeSpent: $timeSpent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScoreStateEntityImpl &&
            (identical(other.enemyKilled, enemyKilled) ||
                other.enemyKilled == enemyKilled) &&
            (identical(other.timeSpent, timeSpent) ||
                other.timeSpent == timeSpent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, enemyKilled, timeSpent);

  /// Create a copy of ScoreStateEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScoreStateEntityImplCopyWith<_$ScoreStateEntityImpl> get copyWith =>
      __$$ScoreStateEntityImplCopyWithImpl<_$ScoreStateEntityImpl>(
          this, _$identity);
}

abstract class _ScoreStateEntity implements ScoreStateEntity {
  const factory _ScoreStateEntity(
      {required final int enemyKilled,
      required final int timeSpent}) = _$ScoreStateEntityImpl;

  @override
  int get enemyKilled;
  @override
  int get timeSpent;

  /// Create a copy of ScoreStateEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScoreStateEntityImplCopyWith<_$ScoreStateEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
