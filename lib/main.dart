import 'package:example1/screen/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:example1/router.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'example',
      // home: signUpRoutes(),
      initialRoute: signUpRoutes,
      routes: routes,
    );
  }
}
