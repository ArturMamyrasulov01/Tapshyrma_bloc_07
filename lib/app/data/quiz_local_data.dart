import 'package:tapshyrma_bloc_07/app/model/quiz_model.dart';
import 'package:tapshyrma_bloc_07/app/utils/string_rel.dart';

// List <Icon>icons=[];
class QuizLocalData {
  List<QuizModel> suroolorJooptor = [
    QuizModel(
      suroolor: StringRel.nomer1,
      jooptop: true,
    ),
    QuizModel(
      suroolor: StringRel.nomer2,
      jooptop: false,
    ),
    QuizModel(
      suroolor: StringRel.nomer3,
      jooptop: false,
    ),
    QuizModel(
      suroolor: StringRel.nomer4,
      jooptop: true,
    ),
    QuizModel(
      suroolor: StringRel.nomer5,
      jooptop: false,
    ),
  ];
}

final QuizLocalData quizLocalData = QuizLocalData();
