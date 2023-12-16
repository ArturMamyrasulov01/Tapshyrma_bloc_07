part of 'quiz_cubit.dart';

// ignore: must_be_immutable
class QuizState extends Equatable {
  QuizState({
    this.buutubu = false,
    this.iconkalar,
    this.index = 0,
  });
  List<Icon>? iconkalar;
  bool buutubu;
  int index;

  @override
  List<Object?> get props => [iconkalar, buutubu, index];
  QuizState copyWith({List<Icon>? iconkalar, bool? buutubu, int? index}) {
    return QuizState(
      iconkalar: iconkalar ?? this.iconkalar,
      buutubu: buutubu ?? this.buutubu,
      index: index ?? this.index,
    );
  }
}
