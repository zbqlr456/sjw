

import 'package:study_japanese_words/model/parts_of_speech.dart';

class WordModel {
  final bool know; // 외웠는지
  final bool check;
  final int level; // jlpt level
  final String chinese; // 한자
  final String japanese; // 히라가나 or 가타카나
  final String korean; // 한글
  final PartsOfSpeech pos; // 품사

  WordModel({
    required this.know,
    required this.check,
    required this.level,
    required this.chinese,
    required this.japanese,
    required this.korean,
    required this.pos,
  });

  WordModel copyWith({
    bool? know,
    bool? check,
    int? level,
    String? chinese,
    String? japanese,
    String? korean,
    PartsOfSpeech? pos,
  }) {
    return WordModel(
      know: know ?? this.know,
      check: check ?? this.check,
      level: level ?? this.level,
      chinese: chinese ?? this.chinese,
      japanese: japanese ?? this.japanese,
      korean: korean ?? this.korean,
      pos: pos ?? this.pos,
    );
  }
}
