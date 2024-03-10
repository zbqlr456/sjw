import 'package:go_router/go_router.dart';
import 'package:study_japanese_words/view/home_screen.dart';
import 'package:study_japanese_words/view/jlpt_word_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context, state) {
        return HomeScreen();
      },
      routes: [
        GoRoute(
          path: 'word/:level',
          name: 'word',
          builder: (context, state){
            return JLPTWordScreen();
          }
        ),
      ],
    ),
  ],
);
