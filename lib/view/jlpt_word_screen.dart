import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:study_japanese_words/layout/default_layout.dart';
import 'package:study_japanese_words/model/word_model.dart';

class JLPTWordScreen extends ConsumerWidget {
  const JLPTWordScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // GoRouterState.of(context).pathParameters.toString() == level
    return DefaultLayout(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('히라가나'),
                Text('한자'),
                Text('한글'),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: Column(
              children: [
                ElevatedButton(onPressed: (){}, child: Text('몰라요'),),
                ElevatedButton(onPressed: (){}, child: Text('알아요'),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
