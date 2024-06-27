import 'package:flutter/material.dart';
import 'package:flutter_competiton/views/screens/main_screen.dart';
import 'package:flutter_competiton/views/widgets/custom_float_action_button.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: MainScreen(),
        floatingActionButton: CustomFloatActionButton(),
      ),
    );
  }
}
