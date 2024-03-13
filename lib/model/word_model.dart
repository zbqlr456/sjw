

import 'package:study_japanese_words/model/parts_of_speech.dart';

class WordModel {
  final int level; // jlpt level
  final String chinese; // 한자
  final String japanese; // 히라가나 or 가타카나
  final String korean; // 한글
  final PartsOfSpeech pos; // 품사

  WordModel({
    required this.level,
    required this.chinese,
    required this.japanese,
    required this.korean,
    required this.pos,
  });

  WordModel copyWith({
    int? level,
    String? chinese,
    String? japanese,
    String? korean,
    PartsOfSpeech? pos,
  }) {
    return WordModel(
      level: level ?? this.level,
      chinese: chinese ?? this.chinese,
      japanese: japanese ?? this.japanese,
      korean: korean ?? this.korean,
      pos: pos ?? this.pos,
    );
  }
}
