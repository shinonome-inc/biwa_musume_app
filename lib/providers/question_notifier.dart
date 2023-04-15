import 'package:biwa_musume_app/models/question_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final questionProvider = StateNotifierProvider<QuestionNotifier, QuestionState>(
  (ref) {
    return QuestionNotifier();
  },
);

class QuestionNotifier extends StateNotifier<QuestionState> {
  QuestionNotifier() : super(const QuestionState(questionIndex: 0));

  void increaseQuestionIndex() {
    if (state.questionIndex > 4) {
      return;
    }
    state = state.copyWith(
      questionIndex: state.questionIndex + 1,
    );
    print('question index: ${state.questionIndex}');
  }
}
