import 'package:flutter/material.dart';
import 'package:tapshyrma_bloc_07/app/view/quiz_page.dart';

import 'app/utils/string_rel.dart';
import 'app/utils/text_style_rel.dart';

class MyApp extends MaterialApp {
  const MyApp({super.key})
      : super(
          debugShowCheckedModeBanner: false,
          home: const QuizPage(),
        );
}

class MyAppBar extends AppBar {
  MyAppBar({super.key})
      : super(
          centerTitle: true,
          title: const Text(
            StringRel.title,
            style: TextStyleRel.colorBlack25Bold,
          ),
        );
}
