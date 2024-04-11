import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:study_japanese_words/model/word_model.dart';

final wordListProvider =
    StateNotifierProvider<WordListNotifier, List<WordModel>>(
        (ref) => WordListNotifier());

class WordListNotifier extends StateNotifier<List<WordModel>> {
  WordListNotifier() : super([]) {
    _loadWordsFromFile();
  }

  Future<void> _loadWordsFromFile() async {
    String fileContent = await rootBundle.loadString('assets/words.txt');
    final List<WordModel> words = [];
    final lines = fileContent.split('\n');

    for (final line in lines) {
      final parts = line.split(':');
      if (parts.length < 5) continue;
      final word = WordModel(
        level: parts[0].trim(),
        chinese: parts[1].trim(),
        japanese: parts[2].trim(),
        korean: parts[3].trim(),
        pos: parts[4].trim(),
      );
      words.add(word);
    }
    state = words;
  }
}
