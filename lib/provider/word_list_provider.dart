import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:study_japanese_words/model/parts_of_speech.dart';
import 'package:study_japanese_words/model/word_model.dart';

final wordListProvider = StateNotifierProvider<WordListNotifier, List<WordModel>>((ref) => WordListNotifier());

class WordListNotifier extends StateNotifier<List<WordModel>>{
  WordListNotifier() : super([
    WordModel(know: false, check: false, level: 5, chinese: '宛', japanese: '-ずつ', korean: '-씩', pos: PartsOfSpeech.noun),
  ]);
}