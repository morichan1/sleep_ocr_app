// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_trait.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CharacterTrait {
  String get traitName => throw _privateConstructorUsedError;
  String get primaryEffect => throw _privateConstructorUsedError;
  String get secondaryEffect => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CharacterTraitCopyWith<CharacterTrait> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterTraitCopyWith<$Res> {
  factory $CharacterTraitCopyWith(
          CharacterTrait value, $Res Function(CharacterTrait) then) =
      _$CharacterTraitCopyWithImpl<$Res, CharacterTrait>;
  @useResult
  $Res call({String traitName, String primaryEffect, String secondaryEffect});
}

/// @nodoc
class _$CharacterTraitCopyWithImpl<$Res, $Val extends CharacterTrait>
    implements $CharacterTraitCopyWith<$Res> {
  _$CharacterTraitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? traitName = null,
    Object? primaryEffect = null,
    Object? secondaryEffect = null,
  }) {
    return _then(_value.copyWith(
      traitName: null == traitName
          ? _value.traitName
          : traitName // ignore: cast_nullable_to_non_nullable
              as String,
      primaryEffect: null == primaryEffect
          ? _value.primaryEffect
          : primaryEffect // ignore: cast_nullable_to_non_nullable
              as String,
      secondaryEffect: null == secondaryEffect
          ? _value.secondaryEffect
          : secondaryEffect // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharacterTraitImplCopyWith<$Res>
    implements $CharacterTraitCopyWith<$Res> {
  factory _$$CharacterTraitImplCopyWith(_$CharacterTraitImpl value,
          $Res Function(_$CharacterTraitImpl) then) =
      __$$CharacterTraitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String traitName, String primaryEffect, String secondaryEffect});
}

/// @nodoc
class __$$CharacterTraitImplCopyWithImpl<$Res>
    extends _$CharacterTraitCopyWithImpl<$Res, _$CharacterTraitImpl>
    implements _$$CharacterTraitImplCopyWith<$Res> {
  __$$CharacterTraitImplCopyWithImpl(
      _$CharacterTraitImpl _value, $Res Function(_$CharacterTraitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? traitName = null,
    Object? primaryEffect = null,
    Object? secondaryEffect = null,
  }) {
    return _then(_$CharacterTraitImpl(
      traitName: null == traitName
          ? _value.traitName
          : traitName // ignore: cast_nullable_to_non_nullable
              as String,
      primaryEffect: null == primaryEffect
          ? _value.primaryEffect
          : primaryEffect // ignore: cast_nullable_to_non_nullable
              as String,
      secondaryEffect: null == secondaryEffect
          ? _value.secondaryEffect
          : secondaryEffect // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CharacterTraitImpl implements _CharacterTrait {
  const _$CharacterTraitImpl(
      {required this.traitName,
      required this.primaryEffect,
      required this.secondaryEffect});

  @override
  final String traitName;
  @override
  final String primaryEffect;
  @override
  final String secondaryEffect;

  @override
  String toString() {
    return 'CharacterTrait(traitName: $traitName, primaryEffect: $primaryEffect, secondaryEffect: $secondaryEffect)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterTraitImpl &&
            (identical(other.traitName, traitName) ||
                other.traitName == traitName) &&
            (identical(other.primaryEffect, primaryEffect) ||
                other.primaryEffect == primaryEffect) &&
            (identical(other.secondaryEffect, secondaryEffect) ||
                other.secondaryEffect == secondaryEffect));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, traitName, primaryEffect, secondaryEffect);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterTraitImplCopyWith<_$CharacterTraitImpl> get copyWith =>
      __$$CharacterTraitImplCopyWithImpl<_$CharacterTraitImpl>(
          this, _$identity);
}

abstract class _CharacterTrait implements CharacterTrait {
  const factory _CharacterTrait(
      {required final String traitName,
      required final String primaryEffect,
      required final String secondaryEffect}) = _$CharacterTraitImpl;

  @override
  String get traitName;
  @override
  String get primaryEffect;
  @override
  String get secondaryEffect;
  @override
  @JsonKey(ignore: true)
  _$$CharacterTraitImplCopyWith<_$CharacterTraitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
