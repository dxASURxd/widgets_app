import 'package:flutter/material.dart';

class BottonsScreen extends StatelessWidget {
  static const String name = 'buttons_screen';

  const BottonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('button screen'),
      ),
      body: const Placeholder(),
    );
  }
}
