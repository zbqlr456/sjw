import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:study_japanese_words/layout/default_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      body: ListView(
        children: [
          ElevatedButton(
            onPressed: () {
              context.goNamed('n5');
            },
            child: Text('N5'),
          ),
        ],
      ),
    );
  }
}
