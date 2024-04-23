import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:study_japanese_words/layout/default_layout.dart';
import 'package:study_japanese_words/provider/word_list_provider.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    ref.read(wordListProvider);
    List<int> jlptNum = [5, 4, 3, 2, 1, 0];

    return DefaultLayout(
      body: ListView(
        children: jlptNum
            .map(
              (level) => ElevatedButton(
                onPressed: () {
                  // 레벨에 맞는 단어 중 N 개 를 선택하고, 그 중에서 외우지 못한애들만 반복해서 외울 수 있다.
                  _showDialog(context, level);
                },
                child: level == 0 ? Text('외운 단어 복습') : Text('N$level'),
              ),
            )
            .toList(),
      ),
    );
  }

  Future _showDialog(BuildContext context, int level) {
    int count = 10;

    return showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return AlertDialog(
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('몇개의 단어를 외우실건가요?'),
                  NumberPicker(
                    value: count,
                    minValue: 10,
                    maxValue: 100,
                    step: 10,
                    haptics: true,
                    onChanged: (value) =>
                        setState(() => count = value),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.push('/word?level=$level&count=$count');
                    },
                    child: Text('시작!'),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
