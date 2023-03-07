import 'package:flutter/material.dart';
import 'package:timer_signout_sessio/home_page.dart';
import 'package:timer_signout_sessio/utils/session_timer.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Iniciar sesión"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: TextButton(
                  onPressed: () => proceed(context),
                  child: const Text("INICIAR SESIÓN")))
        ],
      ),
    );
  }

  void proceed(BuildContext context) {
    SessionTimer sessionTimer = SessionTimer();
    sessionTimer.startTimer();
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }
}
