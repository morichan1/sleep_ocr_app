import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_trait.freezed.dart';

@freezed
class CharacterTrait with _$CharacterTrait {
  const factory CharacterTrait({
    required String traitName,
    required String primaryEffect,
    required String secondaryEffect,
  }) = _CharacterTrait;
}
