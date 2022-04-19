import 'package:flutter/material.dart';
import 'package:example1/constant.dart';

class GradientTextView extends StatelessWidget {
  const GradientTextView(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [persimmon, radicalRed],
      ).createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          )),
    );
  }
}
