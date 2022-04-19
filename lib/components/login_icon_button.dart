import 'package:example1/components/gradient_text_view.dart';
import 'package:flutter/material.dart';
import 'package:example1/constant.dart';

class LoginIconButton extends StatelessWidget {
  const LoginIconButton({
    Key key,
    this.text = '',
    this.image = '',
    this.press,
  }) : super(key: key);

  final String text;
  final String image;
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
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              image,
              fit: BoxFit.fitWidth,
              width: 25,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              height: 35,
              width: 2,
              color: Colors.red.shade200,
            ),
            GradientTextView(text),
          ],
        ),
      ),
    );
  }
}
