part of 'quiz_bloc.dart';

class QuizState {

}

final class QuizInitial extends QuizState {
  final int index;
  final bool buutubu;
  final List<Icon>? iconkalar;
   QuizInitial({
    this.index = 0,
    this.buutubu = false,
    this.iconkalar,
  });
  List<Object?> get props => [iconkalar, buutubu, index];
  QuizInitial copyWith({List<Icon>? iconkalar, bool? buutubu, int? index}) {
    return QuizInitial(
      iconkalar: iconkalar ?? this.iconkalar,
      buutubu: buutubu ?? this.buutubu,
      index: index ?? this.index,
    );
  }
}
