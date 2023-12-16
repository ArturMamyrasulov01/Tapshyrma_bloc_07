import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/quiz_cubit.dart';

class AlertDialogWidget extends StatelessWidget {
  const AlertDialogWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        "Бүттү!",
        textAlign: TextAlign.center,
      ),
      actions: [
        TextButton(
          onPressed: () {
            BlocProvider.of<QuizCubit>(context, listen: false).alertBloc();
          },
          child: const Text("Кайра башта!"),
        ),
      ],
    );
  }
}
