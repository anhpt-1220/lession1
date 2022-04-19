import 'package:example1/components/login_button.dart';
import 'package:example1/components/login_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:example1/constant.dart';

const signUpRoutes = '/sign_up';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(),
    );
  }

  Widget body() {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            persimmon,
            radicalRed,
          ],
        ),
      ),
      child: SizedBox.expand(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(40),
              child: Column(
                children: [
                  logo(),
                  SizedBox(height: 80),
                  LoginIconButton(
                    text: StringRes.signWFB,
                    image: 'assets/images/facebook.png',
                    press: () {},
                  ),
                  SizedBox(height: 30),
                  LoginIconButton(
                    text: StringRes.signWT,
                    image: 'assets/images/twitter.png',
                    press: () {},
                  ),
                  SizedBox(height: 30),
                  LoginButton(
                    text: StringRes.hintSignUp,
                    press: () {},
                  ),
                  SizedBox(height: 30),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      StringRes.hintSignInt,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget logo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const SizedBox(height: 20),
        Image.asset(
          'assets/images/logo.png',
          width: 100,
          fit: BoxFit.fitWidth,
        ),
        const Text(
          StringRes.topContent,
          style: TextStyle(
            color: Colors.white,
            fontSize: smallFontSize,
            fontWeight: FontWeight.bold,
            letterSpacing: smallFontLetterSpacing,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
