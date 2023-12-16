// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:tapshyrma_bloc_07/app/data/quiz_local_data.dart';
import 'package:tapshyrma_bloc_07/app/service/quiz_service.dart';

part 'quiz_state.dart';

class QuizCubit extends Cubit<QuizState> {
  // ignore: prefer_const_literals_to_create_immutables
  QuizCubit() : super(QuizState(iconkalar: []));
  void alertBloc() {
    emit(state.copyWith(buutubu: false, iconkalar: [], index: 0));
  }

  String suroonuAlipKel() {
    return QuizService.suroonuAlypKel(state.index);
  }

  bool jooptuAlypKel() {
    return QuizService.jooptuAlypKel(state.index);
  }

  void otkoz() {
    if (quizLocalData.suroolorJooptor.length > state.index) {
      emit(state.copyWith(index: state.index + 1));
    } else {
      // ignore: avoid_returning_null_for_void
      return null;
    }
  }

  void falseKey() {
    emit(state.copyWith(buutubu: true));
  }

  void userdinJoobuEvent({bool? userJoop}) {
    final jooptor = jooptuAlypKel();
    final list = state.iconkalar!;

    if (userJoop == jooptor) {
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
    otkoz();
    if (suroonuAlipKel() == "") {
      emit(state.copyWith(buutubu: true));
    }
  }
}
