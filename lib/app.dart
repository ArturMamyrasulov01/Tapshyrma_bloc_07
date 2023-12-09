import 'package:flutter/material.dart';
import 'package:tapshyrma_bloc_07/app/view/quiz_page.dart';

class MyApp extends MaterialApp {
  const MyApp({super.key})
      : super(
          debugShowCheckedModeBanner: false,
          home: const QuizPage(),
        );
}
