import 'package:freezed_annotation/freezed_annotation.dart';

part 'sub_skill.freezed.dart';

@freezed
class SubSkill with _$SubSkill {
  const factory SubSkill({
    required String skillName,
    required String effect,
  }) = _SubSkill;
}
