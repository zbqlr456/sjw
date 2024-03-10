class WordModel {
  final bool know;
  final bool check;
  final int level;
  final String chinese;
  final String japanese;
  final String korean;

  WordModel({
    required this.know,
    required this.check,
    required this.level,
    required this.chinese,
    required this.japanese,
    required this.korean,
  });

  WordModel copyWith(
      {bool? know,
        bool? check,
      int? level,
      String? chinese,
      String? japanese,
      String? korean}) {
    return WordModel(
      know: know ?? this.know,
      check: check ?? this.check,
      level: level ?? this.level,
      chinese: chinese ?? this.chinese,
      japanese: japanese ?? this.japanese,
      korean: korean ?? this.korean,
    );
  }
}
