import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:study_japanese_words/model/word_model.dart';

final wordListProvider = StateNotifierProvider<WordListNotifier, List<WordModel>>((ref) => WordListNotifier());

class WordListNotifier extends StateNotifier<List<WordModel>>{
  WordListNotifier() : super([
    WordModel(know: false, check: false, level: 5, chinese: '体', japanese: 'からだ', korean: '몸'),
    WordModel(know: false, check: false, level: 5, chinese: '頭', japanese: 'あたま', korean: '머리'),
    WordModel(know: false, check: false, level: 4, chinese: '科学', japanese: 'かがく', korean: '과학'),
    WordModel(know: false, check: false, level: 4, chinese: '都会', japanese: 'とかい', korean: '도시'),
    WordModel(know: false, check: false, level: 3, chinese: '余る', japanese: 'あまる', korean: '남다'),
    WordModel(know: false, check: false, level: 3, chinese: '驚く', japanese: 'おどろく', korean: '놀라다'),
    WordModel(know: false, check: false, level: 2, chinese: '祝う', japanese: 'いわう', korean: '축하하다'),
    WordModel(know: false, check: false, level: 2, chinese: '叫ぶ', japanese: 'さけぶ', korean: '외치다'),
    WordModel(know: false, check: false, level: 1, chinese: '歩む', japanese: 'あゆむ', korean: '걷다, 나아가다'),
    WordModel(know: false, check: false, level: 1, chinese: '省みる', japanese: 'かえりみる', korean: '반성하다'),
  ]);
}