import 'package:flutter/material.dart';
import 'package:study_japanese_words/layout/default_layout.dart';

class MemorizedWordsScreen extends StatelessWidget {
  const MemorizedWordsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      body: Center(
        child: Text('외운단어'),
      ),
    );
  }
}
