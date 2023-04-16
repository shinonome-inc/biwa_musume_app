import 'package:biwa_musume_app/models/question.dart';

class QuestionData {
  static const Question defaultQuestion = Question(
    titleText: '',
    leftButtonText: '',
    rightButtonText: '',
  );
  // 第1問（共通）
  static const Question herd = Question(
    titleText: 'どちらの行動が魅力的に見えますか？',
    leftButtonText: '単独行動',
    rightButtonText: '集団行動',
  );
  // 第2問（共通）
  static const Question character = Question(
    titleText: 'どちらの性格が好きですか？',
    leftButtonText: '活発',
    rightButtonText: '穏やか',
  );
  // 第3問（共通）
  static const Question time = Question(
    titleText: 'デートするならどちらの時間帯がいいですか？',
    leftButtonText: '昼',
    rightButtonText: '夜',
  );
  static const Question season = Question(
    titleText: '付き合うならどちらの季節がいいですか？',
    leftButtonText: '夏',
    rightButtonText: '冬',
  );
  static const Question food = Question(
    titleText: '肉食系と草食系どちらが好きですか？',
    leftButtonText: '草食系',
    rightButtonText: '肉食系',
  );
  static const Question country = Question(
    titleText: 'デートするならどちらの時間帯がいいですか？',
    leftButtonText: '日本人と結婚',
    rightButtonText: '国際結婚',
  );
  static const Question height = Question(
    titleText: '低身長と高身長どちらが好きですか？',
    leftButtonText: '低身長',
    rightButtonText: '高身長',
  );
  static const Question pace = Question(
    titleText: 'どちらのペースが好きですか？',
    leftButtonText: 'せっかち',
    rightButtonText: 'のんびり',
  );
  static const Question indoorOutdoor = Question(
    titleText: 'アウトドア派ですか？インドア派ですか？',
    leftButtonText: 'アウトドア派',
    rightButtonText: 'インドア派',
  );
  static const Question figure = Question(
    titleText: '好みの体型はどっちですか？',
    leftButtonText: '細身',
    rightButtonText: 'ふくよか',
  );
  static const Question temperature = Question(
    titleText: '暑がりですか？寒がりですか？',
    leftButtonText: '暑がり',
    rightButtonText: '寒がり',
  );
}
