
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon.freezed.dart';

@freezed
class Pokemon with _$Pokemon {
  const factory Pokemon({
    required String name,
    required String number,
    required String sleepStyle,
    required String type,
    required String fruit,
    required String food1,
    required String food2,
    required String food3,
    required String skill,
    required int fp,
    required int power,
  }) = _Pokemon;
}
