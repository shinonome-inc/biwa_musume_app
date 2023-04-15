import 'package:freezed_annotation/freezed_annotation.dart';

part 'diagnostic_state.freezed.dart';

@freezed
class DiagnosticState with _$DiagnosticState {
  const factory DiagnosticState({
    required int questionIndex,
    required int resultIndex,
  }) = _DiagnosticState;
}
