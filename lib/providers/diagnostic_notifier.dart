import 'package:biwa_musume_app/constants/question_data.dart';
import 'package:biwa_musume_app/models/diagnostic_state.dart';
import 'package:biwa_musume_app/models/question.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final diagnosticProvider =
    StateNotifierProvider<DiagnosticNotifier, DiagnosticState>(
  (ref) {
    return DiagnosticNotifier();
  },
);

class DiagnosticNotifier extends StateNotifier<DiagnosticState> {
  DiagnosticNotifier() : super(kDefaultDiagnosticState);

  void resetData() {
    state = kDefaultDiagnosticState;
  }

  Question get currentQuestion {
    switch (state.questionIndex) {
      case 0:
        return QuestionData.herd;
      case 1:
        return QuestionData.character;
      case 2:
        return QuestionData.time;
      case 3:
        if ([0, 8].contains(state.resultIndex)) {
          return QuestionData.season;
        } else if ([4, 24].contains(state.resultIndex)) {
          return QuestionData.height;
        } else if ([12, 16, 20, 28].contains(state.resultIndex)) {
          return QuestionData.food;
        } else {
          return QuestionData.defaultQuestion;
        }
      case 4:
        if ([0, 26].contains(state.resultIndex)) {
          return QuestionData.food;
        } else if ([2, 4, 22].contains(state.resultIndex)) {
          return QuestionData.country;
        } else if (state.resultIndex == 6) {
          return QuestionData.character;
        } else if ([8, 12, 16, 28].contains(state.resultIndex)) {
          return QuestionData.country;
        } else if (state.resultIndex == 10) {
          return QuestionData.indoorOutdoor;
        } else if (state.resultIndex == 14) {
          return QuestionData.figure;
        } else if (state.resultIndex == 18) {
          return QuestionData.temperature;
        } else if ([20, 24, 30].contains(state.resultIndex)) {
          return QuestionData.temperature;
        } else {
          return QuestionData.defaultQuestion;
        }
      default:
        return QuestionData.defaultQuestion;
    }
  }

  void increaseDiagnosisIndex() {
    if (state.questionIndex > 4) {
      return;
    }
    state = state.copyWith(
      questionIndex: state.questionIndex + 1,
    );
  }

  void updateResultIndex(bool isRightSelection) {
    if (!isRightSelection) {
      return;
    }
    switch (state.questionIndex) {
      case 0:
        state = state.copyWith(
          resultIndex: state.resultIndex + 16,
        );
        break;
      case 1:
        state = state.copyWith(
          resultIndex: state.resultIndex + 8,
        );
        break;
      case 2:
        state = state.copyWith(
          resultIndex: state.resultIndex + 4,
        );
        break;
      case 3:
        state = state.copyWith(
          resultIndex: state.resultIndex + 2,
        );
        break;
      case 4:
        state = state.copyWith(
          resultIndex: state.resultIndex + 1,
        );
        break;
      default:
        break;
    }
  }
}

const DiagnosticState kDefaultDiagnosticState = DiagnosticState(
  questionIndex: 0,
  resultIndex: 0,
);
