import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tapshyrma_bloc_07/app/utils/string_rel.dart';
import 'package:tapshyrma_bloc_07/app/utils/text_style_rel.dart';

import '../common_widgets/button_widget.dart';
import '../cubit/quiz_cubit.dart';
import '../utils/color_rel.dart';

class QuizView extends StatelessWidget {
  const QuizView({super.key});

  @override
  Widget build(BuildContext context) {
    // final onTap = BlocProvider.of<QuizBloc>(context);
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          StringRel.title,
          style: TextStyleRel.colorBlack25Bold,
        ),
      ),
      body: BlocBuilder<QuizCubit, QuizState>(
        builder: (context, state) {
          final quizCubit = context.read<QuizCubit>();
          return Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: Center(
                    child: state.buutubu == true
                        ? AlertDialog(
                            title: const Text("Buttu!"),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  // state.buutubu = false;

                                  // context.watch<HomeCubit>().alertBloc();
                                  BlocProvider.of<QuizCubit>(context,
                                          listen: false)
                                      .alertBloc();
                                  // state.iconkalar = [];
                                  // setState(() {});
                                  // BlocProvider.of<QuizBloc>(context,
                                  //         listen: false)
                                  //     .mapEventToState(AlertEvent());
                                },
                                child: const Text("Kaira bashta"),
                              ),
                            ],
                          )
                        : Text(
                            quizCubit.suroonuAlipKel(),
                            style: TextStyleRel.colorWhite35,
                            textAlign: TextAlign.center,
                          ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      ButtonWidget(
                        size: size,
                        bgColor: ColorRel.colorGreen,
                        title: StringRel.buttonTuura,
                        onPressed: () {
                          context
                              .read<QuizCubit>()
                              .userdinJoobuEvent(userJoop: true);
                        },
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      ButtonWidget(
                        size: size,
                        bgColor: ColorRel.colorRed,
                        title: StringRel.buttonTuuraEmes,
                        onPressed: () {
                          quizCubit.userdinJoobuEvent(userJoop: false);
                          // ignore: invalid_use_of_visible_for_testing_member
                        },
                      ),
                      Expanded(
                        child: Row(
                          children: state.iconkalar!,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
