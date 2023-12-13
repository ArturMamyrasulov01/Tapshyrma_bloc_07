part of 'quiz_bloc.dart';

abstract class QuizEvent {}
class AlertEvent extends QuizEvent {}

class OtkozEvent extends QuizEvent {}

class FalseKylEvent extends QuizEvent {}

class UserdinJoobuEvent extends QuizEvent {
  final bool userJoobu;

  UserdinJoobuEvent(this.userJoobu);
}



