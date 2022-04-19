import 'package:flutter/material.dart';
import 'package:example1/components/gradient_text_view.dart';
import 'package:example1/constant.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key key,
    this.text = '',
    this.press,
  }) : super(key: key);

  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: heightButton,
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radiusButton),
        ),
        color: Colors.white,
        onPressed: press,
        child: GradientTextView(text),
      ),
    );
  }
}
