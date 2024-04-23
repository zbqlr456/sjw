import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:study_japanese_words/layout/default_layout.dart';
import 'package:study_japanese_words/model/word_model.dart';
import 'package:study_japanese_words/provider/word_list_provider.dart';

class JLPTWordScreen extends ConsumerStatefulWidget {
  final String level;
  final int count;

  const JLPTWordScreen({required this.level, required this.count, super.key});

  @override
  ConsumerState<JLPTWordScreen> createState() => _JLPTWordScreenState();
}

class _JLPTWordScreenState extends ConsumerState<JLPTWordScreen> {
  int i = 0;

  late List<WordModel> wordList;
  List<WordModel> levelWordList = [];
  late List<bool> checkWordList;
  late WordModel nowWord;

  @override
  Widget build(BuildContext context) {
    TextStyle nowWordStyle = TextStyle(color: Colors.black, fontSize: 30);

    if (levelWordList.isEmpty) {
      wordList = ref.read(wordListProvider);
      levelWordList = filterLevelWords(wordList, widget.level);
      checkWordList =
          List<bool>.generate(levelWordList.length, (index) => false);
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
                      click(know: false);
                    });
                  },
                  child: Text('몰라요'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      click(know: true);
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

  ///
  /// Widgets
  ///

  Future _showDialog(BuildContext context) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('단어 공부 완료!'),
              ElevatedButton(
                onPressed: () {
                  context.go('/');
                },
                child: Text('홈으로'),
              ),
            ],
          ),
        );
      },
    );
  }

  ///
  /// Methods
  ///

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

  // 알아요(know = true), 몰라요(know = false) 클릭했을 때 동작하는 함수
  void click({required bool know}) {
    i += 1;
    if (i == widget.count) {
      _showDialog(context);
    }
  }
}
