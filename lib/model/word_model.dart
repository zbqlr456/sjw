class WordModel {
  final bool know;
  final int level;
  final String chinese;
  final String japanese;
  final String korean;

  WordModel(
      {required this.know,
      required this.level,
      required this.chinese,
      required this.korean,
      required this.japanese});

  WordModel copyWith(
      {bool? know,
      int? level,
      String? chinese,
      String? japanese,
      String? korean}) {
    return WordModel(
        know: know ?? this.know,
        level: level ?? this.level,
        chinese: chinese ?? this.chinese,
        korean: korean ?? this.korean,
        japanese: japanese ?? this.japanese);
  }
}
