import 'package:flutter/material.dart';
import 'package:timer_signout_sessio/utils/session_timer.dart';

mixin BasicPage<Page extends BasePage> on BaseState<Page> {
  SessionTimer sessionTimer = SessionTimer();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: sessionTimer.userActivityDetected,
      onPanDown: sessionTimer.userActivityDetected,
      onScaleStart: sessionTimer.userActivityDetected,
      child: rootWidget(context),
    );
  }

  Widget rootWidget(BuildContext context);
}

abstract class BasePage extends StatefulWidget {
  const BasePage({super.key});
}

abstract class BaseState<Page extends BasePage> extends State<Page> {}
