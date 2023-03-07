import 'package:flutter/material.dart';
import 'package:timer_signout_sessio/utils/basic_page.dart';

class HomePage extends BasePage {
  const HomePage({super.key});

  @override
  BaseState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends BaseState<HomePage> with BasicPage {
  @override
  Widget rootWidget(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: const Center(
        child: Text('Hello World'),
      ),
    );
  }
}
