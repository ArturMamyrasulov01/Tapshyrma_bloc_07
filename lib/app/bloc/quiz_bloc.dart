import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tapshyrma_bloc_07/app/service/quiz_service.dart';

part 'quiz_event.dart';
part 'quiz_state.dart';

class QuizBloc extends Bloc<QuizEvent, QuizInitial> {
  QuizBloc() : super( QuizInitial(iconkalar: [])) {
    bool joopAlypKel() {
      return QuizService.jooptuAlypKel(state.index);
    }

    String supoonuAlypKel() {
      return QuizService.suroonuAlypKel(state.index);
    }

    on<Increment>(
      (event, emit) {
        emit( QuizInitial(
          buutubu: false,
          iconkalar: [],
          index: 0,
        ));
      },
    );
    on<Otkoz>(
      (event, emit) {
        emit(
          QuizInitial(index: state.index + 1),
        );
      },
    );
    on<UserdinJoobu>(
      (event, emit) {
        void userdinJoobu(bool userJoop) {
          final jooptor = joopAlypKel();
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
            const Icon(
              Icons.close,
              size: 50,
              color: Colors.red,
            );
          }
          add(Otkoz());
          if (supoonuAlypKel() == "") {
            emit( QuizInitial(buutubu: true));
          }
        }
      },
    );
    on<FalseKyl>(
      (event, emit) {
        emit(
           QuizInitial(buutubu: true),
        );
      },
    );
    on<SuroonuAlypKel>(
      (event, emit) {
        return QuizService.suroonuAlypKel(state.index);
      },
    );
  }
}
