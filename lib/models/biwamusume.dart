import 'package:freezed_annotation/freezed_annotation.dart';

part 'biwamusume.freezed.dart';

@freezed
class Biwamusume with _$Biwamusume {
  const factory Biwamusume({
    required String name,
  }) = _Biwamusume;
}

extension BiwamusumeExtension on Biwamusume {
  String get imagePath => 'assets/images/$name.png';
}
