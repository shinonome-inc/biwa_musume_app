import 'package:freezed_annotation/freezed_annotation.dart';

part 'question.freezed.dart';

@freezed
class Question with _$Question {
  const factory Question({
    required String titleText,
    required String leftButtonText,
    required String rightButtonText,
  }) = _Question;
}
