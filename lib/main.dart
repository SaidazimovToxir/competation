import 'package:flutter/material.dart';
import 'package:flutter_competiton/controllers/product_controller.dart';
import 'package:flutter_competiton/views/screens/home_screen.dart';
import 'package:flutter_competiton/views/screens/payment.dart';
import 'package:flutter_competiton/views/screens/detail_screen.dart';
import 'package:flutter_competiton/views/widgets/custom_float_action_button.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ProductController(),
        ),
      ],
      builder: (context, child) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Payment(),
        );
      },
    );
  }
}
