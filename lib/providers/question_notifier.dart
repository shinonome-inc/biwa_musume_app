import 'package:biwa_musume_app/models/question_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final questionProvider = StateNotifierProvider<QuestionNotifier, QuestionState>(
  (ref) {
    return QuestionNotifier();
  },
);

class QuestionNotifier extends StateNotifier<QuestionState> {
  QuestionNotifier()
      : super(const QuestionState(questionIndex: 0, resultIndex: 0));

  void increaseQuestionIndex() {
    if (state.questionIndex > 4) {
      return;
    }
    state = state.copyWith(
      questionIndex: state.questionIndex + 1,
    );
  }

  void updateResultIndex(bool isRightSelection) {
    switch (state.questionIndex) {
      case 0:
        if (isRightSelection) {
          state = state.copyWith(
            resultIndex: state.resultIndex + 16,
          );
        }
        break;
      case 1:
        if (isRightSelection) {
          state = state.copyWith(
            resultIndex: state.resultIndex + 8,
          );
        }
        break;
      case 2:
        if (isRightSelection) {
          state = state.copyWith(
            resultIndex: state.resultIndex + 4,
          );
        }
        break;
      case 3:
        if (isRightSelection) {
          state = state.copyWith(
            resultIndex: state.resultIndex + 2,
          );
        }
        break;
      case 4:
        if (isRightSelection) {
          state = state.copyWith(
            resultIndex: state.resultIndex + 1,
          );
        }
        break;
      default:
        break;
    }
  }
}
