import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:study_japanese_words/layout/default_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<int> jlptNum = [5,4,3,2,1,0];

    return DefaultLayout(
      body: ListView(
        children: jlptNum.map((e) => ElevatedButton(
          onPressed: () {
            context.goNamed('n$e');
          },
          child: Text('N$e'),
        ),).toList(),
      ),
    );
  }
}
