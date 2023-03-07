import 'dart:async';

import 'package:flutter/material.dart';
import 'package:timer_signout_sessio/login_page.dart';
import 'package:timer_signout_sessio/utils/global.dart';

class SessionTimer {
  static Timer? timer;

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 15), (_) {
      timedOut();
    });
  }

  void userActivityDetected([_]) {
    if (timer != null || !timer!.isActive) {
      debugPrint(timer!.tick.toString());
      timer!.cancel();
      startTimer();
    }
    return;
  }

  Future<void> timedOut() async {
    timer!.cancel();

    showDialog(
        context: navigatorKey.currentContext!,
        builder: (builder) {
          return AlertDialog(
            title: const Text('Alert'),
            content: const Text(
                'Sorry but you have been logged out due to inactivity...'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil<dynamic>(
                    builder,
                    MaterialPageRoute<dynamic>(
                      builder: (BuildContext context) => const LoginPage(),
                    ),
                    (route) => false,
                  );
                },
                child: const Text('OK'),
              ),
            ],
          );
        });
  }
}
