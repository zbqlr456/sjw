import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:study_japanese_words/model/word_model.dart';

final wordListProvider = StateNotifierProvider<WordListNotifier, List<WordModel>>((ref) => WordListNotifier());

class WordListNotifier extends StateNotifier<List<WordModel>>{
  WordListNotifier() : super([]);
}