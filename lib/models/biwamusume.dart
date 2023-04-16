import 'package:freezed_annotation/freezed_annotation.dart';

part 'biwamusume.freezed.dart';

@freezed
class Biwamusume with _$Biwamusume {
  const factory Biwamusume({
    required String name,
    required bool isHerb, // 群れで行動するか
    required bool isCalm, // おとなしい性格か
    required bool isNocturnalHabit, // 夜行性か
    required bool isCarnivorous, // 肉食か
    required int height, // 身長
  }) = _Biwamusume;
}

extension BiwamusumeExtension on Biwamusume {
  String get imagePath => 'assets/biwamusume/$name.png';
}
