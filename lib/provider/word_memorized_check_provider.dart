import 'package:flutter_riverpod/flutter_riverpod.dart';

final wordMemorizedCheckProvider = StateNotifierProvider<WordMemorizedCheckNotifier,List<bool>>((ref) => WordMemorizedCheckNotifier());

// secure storage에 편하게 저장하기 위해 외웠는지 여부는 따로 관리
class WordMemorizedCheckNotifier extends StateNotifier<List<bool>>{
  WordMemorizedCheckNotifier() : super([]);
}