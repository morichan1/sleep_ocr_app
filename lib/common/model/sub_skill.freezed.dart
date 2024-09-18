// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sub_skill.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SubSkill {
  String get skillName => throw _privateConstructorUsedError;
  String get effect => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubSkillCopyWith<SubSkill> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubSkillCopyWith<$Res> {
  factory $SubSkillCopyWith(SubSkill value, $Res Function(SubSkill) then) =
      _$SubSkillCopyWithImpl<$Res, SubSkill>;
  @useResult
  $Res call({String skillName, String effect});
}

/// @nodoc
class _$SubSkillCopyWithImpl<$Res, $Val extends SubSkill>
    implements $SubSkillCopyWith<$Res> {
  _$SubSkillCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? skillName = null,
    Object? effect = null,
  }) {
    return _then(_value.copyWith(
      skillName: null == skillName
          ? _value.skillName
          : skillName // ignore: cast_nullable_to_non_nullable
              as String,
      effect: null == effect
          ? _value.effect
          : effect // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubSkillImplCopyWith<$Res>
    implements $SubSkillCopyWith<$Res> {
  factory _$$SubSkillImplCopyWith(
          _$SubSkillImpl value, $Res Function(_$SubSkillImpl) then) =
      __$$SubSkillImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String skillName, String effect});
}

/// @nodoc
class __$$SubSkillImplCopyWithImpl<$Res>
    extends _$SubSkillCopyWithImpl<$Res, _$SubSkillImpl>
    implements _$$SubSkillImplCopyWith<$Res> {
  __$$SubSkillImplCopyWithImpl(
      _$SubSkillImpl _value, $Res Function(_$SubSkillImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? skillName = null,
    Object? effect = null,
  }) {
    return _then(_$SubSkillImpl(
      skillName: null == skillName
          ? _value.skillName
          : skillName // ignore: cast_nullable_to_non_nullable
              as String,
      effect: null == effect
          ? _value.effect
          : effect // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SubSkillImpl implements _SubSkill {
  const _$SubSkillImpl({required this.skillName, required this.effect});

  @override
  final String skillName;
  @override
  final String effect;

  @override
  String toString() {
    return 'SubSkill(skillName: $skillName, effect: $effect)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubSkillImpl &&
            (identical(other.skillName, skillName) ||
                other.skillName == skillName) &&
            (identical(other.effect, effect) || other.effect == effect));
  }

  @override
  int get hashCode => Object.hash(runtimeType, skillName, effect);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubSkillImplCopyWith<_$SubSkillImpl> get copyWith =>
      __$$SubSkillImplCopyWithImpl<_$SubSkillImpl>(this, _$identity);
}

abstract class _SubSkill implements SubSkill {
  const factory _SubSkill(
      {required final String skillName,
      required final String effect}) = _$SubSkillImpl;

  @override
  String get skillName;
  @override
  String get effect;
  @override
  @JsonKey(ignore: true)
  _$$SubSkillImplCopyWith<_$SubSkillImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
