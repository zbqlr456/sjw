import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:study_japanese_words/layout/default_layout.dart';
import 'package:study_japanese_words/model/word_model.dart';
import 'package:study_japanese_words/provider/word_list_provider.dart';

class JLPTWordScreen extends ConsumerStatefulWidget {
  const JLPTWordScreen({super.key});

  @override
  ConsumerState<JLPTWordScreen> createState() => _JLPTWordScreenState();
}

class _JLPTWordScreenState extends ConsumerState<JLPTWordScreen> {
  int i = 0;
  late String level;

  late List<WordModel> wordList;
  List<WordModel> levelWordList = [];
  late List<bool> checkWordList;
  late WordModel nowWord;

  @override
  Widget build(BuildContext context) {
    TextStyle nowWordStyle = TextStyle(color: Colors.black, fontSize: 30);

    final String pathParameter =
    GoRouterState.of(context).pathParameters.toString();
    level = extractNumbers(pathParameter);

    if (levelWordList.isEmpty) {
      wordList = ref.read(wordListProvider);
      levelWordList = filterLevelWords(wordList, level);
      checkWordList = List<bool>.generate(levelWordList.length, (index) => false);
      levelWordList.shuffle();
    }

    nowWord = levelWordList[i];

    return DefaultLayout(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(nowWord.japanese, style: nowWordStyle),
                Text(nowWord.chinese, style: nowWordStyle),
                Text(nowWord.korean, style: nowWordStyle),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      i += 1;
                    });
                  },
                  child: Text('몰라요'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      i += 1;
                    });
                  },
                  child: Text('알아요'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // "{level : 1}" 을 "1" 로 바꿔주는 함수
  String extractNumbers(String str) {
    final RegExp regExp = RegExp(r'\d+');
    final match = regExp.firstMatch(str);

    return match?.group(0) ?? '';
  }

  // 레벨에 맞는 WordModel 들만 추출해주는 함수
  List<WordModel> filterLevelWords(List<WordModel> wordList, String level) {
    return wordList.where((word) => word.level == level).toList();
  }
}
