import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:study_japanese_words/layout/default_layout.dart';
import 'package:study_japanese_words/provider/word_list_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.read(wordListProvider);
    List<int> jlptNum = [5, 4, 3, 2, 1, 0];

    return DefaultLayout(
      body: ListView(
        children: jlptNum
            .map(
              (level) => ElevatedButton(
                onPressed: () {
                  // 레벨에 맞는 단어 중 N 개 를 선택하고, 그 중에서 외우지 못한애들만 반복해서 외울 수 있다.
                  context.go('/word/$level');
                },
                child: level == 0 ? Text('외운 단어 복습') : Text('N$level'),
              ),
            )
            .toList(),
      ),
    );
  }
}
