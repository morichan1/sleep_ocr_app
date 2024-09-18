import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_skill.freezed.dart';

@freezed
class MainSkill with _$MainSkill {
  const factory MainSkill({
    required String skillName,
    required String effect,
  }) = _MainSkill;
}
