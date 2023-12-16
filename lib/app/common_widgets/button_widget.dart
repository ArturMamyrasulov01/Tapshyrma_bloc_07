import 'package:flutter/material.dart';

import '../utils/text_style_rel.dart';

class ButtonWidget extends StatelessWidget {
   final Color bgColor;
  final void Function()? onPressed;
  final Size size;
  final String title;
  const ButtonWidget({
    super.key,
    required this.size,
    required this.bgColor,
    required this.onPressed,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.07,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyleRel.colorWhite25,
        ),
      ),
    );
  }
}
