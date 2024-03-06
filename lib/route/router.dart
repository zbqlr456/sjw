import 'package:go_router/go_router.dart';
import 'package:study_japanese_words/view/home_screen.dart';
import 'package:study_japanese_words/view/jlpt_n1_screen.dart';
import 'package:study_japanese_words/view/jlpt_n2_screen.dart';
import 'package:study_japanese_words/view/jlpt_n3_screen.dart';
import 'package:study_japanese_words/view/jlpt_n4_screen.dart';
import 'package:study_japanese_words/view/jlpt_n5_screen.dart';
import 'package:study_japanese_words/view/memorized_words_screen.dart';

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
          path: 'jlpt_n5',
          name: 'n5',
          builder: (context, state){
            return JLPTN5Screen();
          }
        ),
        GoRoute(
            path: 'jlpt_n4',
            name: 'n4',
            builder: (context, state){
              return JLPTN4Screen();
            }
        ),
        GoRoute(
            path: 'jlpt_n3',
            name: 'n3',
            builder: (context, state){
              return JLPTN3Screen();
            }
        ),
        GoRoute(
            path: 'jlpt_n2',
            name: 'n2',
            builder: (context, state){
              return JLPTN2Screen();
            }
        ),
        GoRoute(
            path: 'jlpt_n1',
            name: 'n1',
            builder: (context, state){
              return JLPTN1Screen();
            }
        ),
        GoRoute(
            path: 'memorized_words',
            name: 'n0',
            builder: (context, state){
              return MemorizedWordsScreen();
            }
        ),
      ],
    ),
  ],
);
