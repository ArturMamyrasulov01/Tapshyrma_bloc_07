import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tapshyrma_bloc_07/app/service/quiz_service.dart';

part 'quiz_event.dart';
part 'quiz_state.dart';

class QuizBloc extends Bloc<QuizEvent, QuizState> {
  QuizBloc() : super(QuizState(buutubu: false, iconkalar: [], index: 0)) {
    on<UserdinJoobuEvent>();
  }

  Stream<QuizState> mapEventToState(QuizEvent event) async* {
    log(event.toString());
    if (event is AlertEvent) {
      state.copyWith(buutubu: false, iconkalar: [], index: 0);
    } else if (event is OtkozEvent) {
      state.copyWith(index: state.index + 1);
    } else if (event is FalseKylEvent) {
      state.copyWith(buutubu: true);
    } else if (event is UserdinJoobuEvent) {
      final jooptor = joopAlipKel();
      final list = state.iconkalar;

      if (event.userJoobu == jooptor) {
        list.add(
          const Icon(
            Icons.check,
            size: 50,
            color: Colors.green,
          ),
        );
      } else {
        list.add(
          const Icon(
            Icons.close,
            size: 50,
            color: Colors.red,
          ),
        );
      }

      yield state.copyWith(iconkalar: list);
      yield* otkoz();

      if (suroonuAlipKel() == '') {
        state.copyWith(buutubu: true);
      }
    }
  }

  String suroonuAlipKel() {
    return QuizService.suroonuAlypKel(state.index);
  }

  bool joopAlipKel() {
    return QuizService.jooptuAlypKel(state.index);
  }

  Stream<QuizState> otkoz() async* {
    state.copyWith(index: state.index + 1);
  }
}
