import 'package:tapshyrma_bloc_07/app/data/quiz_local_data.dart';

class QuizService {
  static String suroonuAlypKel(int index) {
    if (index < quizLocalData.suroolorJooptor.length) {
      return quizLocalData.suroolorJooptor[index].suroolor!;
    } else {
      return "";
    }
  }

  static bool jooptuAlypKel(int index) {
    if (index < quizLocalData.suroolorJooptor.length) {
      return quizLocalData.suroolorJooptor[index].jooptop!;
    } else {
      return false;
    }
  }
}
