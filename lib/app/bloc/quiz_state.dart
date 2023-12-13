part of 'quiz_bloc.dart';

class QuizState {
  final bool buutubu;
  final List<Icon> iconkalar;
  final int index;

  QuizState(
      {required this.buutubu, required this.iconkalar, required this.index});

  QuizState copyWith({bool? buutubu, List<Icon>? iconkalar, int? index}) {
    return QuizState(
      buutubu: buutubu ?? this.buutubu,
      iconkalar: iconkalar ?? this.iconkalar,
      index: index ?? this.index,
    );
  }
}
