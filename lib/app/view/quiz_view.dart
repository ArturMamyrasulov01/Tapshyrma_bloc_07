
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tapshyrma_bloc_07/app/bloc/quiz_bloc.dart';
import 'package:tapshyrma_bloc_07/app/utils/string_rel.dart';
import 'package:tapshyrma_bloc_07/app/utils/text_style_rel.dart';

import '../common_widgets/button_widget.dart';
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
      body: BlocBuilder<QuizBloc, QuizState>(
        builder: (context, state) {
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
                            context.read<QuizBloc>().suroonuAlipKel(),
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
                          QuizBloc().add(UserdinJoobuEvent(true));
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
                          BlocProvider.of<QuizBloc>(context)
                              .mapEventToState(UserdinJoobuEvent(false));
                          // ignore: invalid_use_of_visible_for_testing_member
                        },
                      ),
                      Expanded(
                        child: Row(
                          children: state.iconkalar,
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
