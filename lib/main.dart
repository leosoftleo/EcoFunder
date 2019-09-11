import 'package:flutter/material.dart';

import 'module/home/view/VHome.dart';
import 'module/login/view/VLogin.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (context) => VLogin(),
        '/home': (context) => VHome(),
      },
    );
  }
}
