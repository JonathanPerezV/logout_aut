import 'package:flutter/material.dart';
import 'package:timer_signout_sessio/home_page.dart';
import 'package:timer_signout_sessio/login_page.dart';
import 'package:timer_signout_sessio/utils/global.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      title: 'Material App',
      routes: {'login': (_) => LoginPage(), 'home': (_) => HomePage()},
      initialRoute: 'login',
    );
  }
}
