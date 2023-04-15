import 'package:freezed_annotation/freezed_annotation.dart';

part 'diagnosis_state.freezed.dart';

@freezed
class DiagnosisState with _$DiagnosisState {
  const factory DiagnosisState({
    required int questionIndex,
    required int resultIndex,
  }) = _DiagnosisState;
}
