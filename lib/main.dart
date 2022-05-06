import 'package:flutter/material.dart';
import 'package:movie_app/screen/screen1.dart';
import 'package:movie_app/screen/screen2.dart';
import 'package:movie_app/screen/screen3.dart';
import 'package:movie_app/screen/screen4.dart';

void main() {
  runApp(MaterialApp(
    home: Screen1(),
    routes: <String, WidgetBuilder>{
      '/screen1': (BuildContext context) => Screen1(),
      '/screen2': (BuildContext context) => Screen2(),
      '/screen3': (BuildContext context) => Screen3(),
      '/screen4': (BuildContext context) => Screen4()
    },
  ));
  print("Whatever you want to do is okay");
}

// https://tutsnode.net/php-registration-form-email-verification-responsive-email/
