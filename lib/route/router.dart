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
          path: 'word',
          name: 'word',
          builder: (context, state) {
            final level = state.uri.queryParameters['level'] ?? '0';
            final count = state.uri.queryParameters['count'] ?? '10';
            return JLPTWordScreen(level: level, count: int.parse(count));
          },
        ),
      ],
    ),
  ],
);
