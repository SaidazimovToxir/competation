import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:flutter_competition/views/screens/cart_scren_purchase.dart';
import 'package:flutter_competition/views/screens/main_screen.dart';
import 'package:flutter_competition/views/widgets/custom_float_action_button.dart';
=======
import 'package:flutter_competiton/controllers/product_controller.dart';
import 'package:flutter_competiton/views/screens/home_screen.dart';
import 'package:flutter_competiton/views/screens/detail_screen.dart';
import 'package:flutter_competiton/views/widgets/custom_float_action_button.dart';
import 'package:provider/provider.dart';
>>>>>>> 373a96045ab1d833ba29ce7bfa4cc0e6f436fe6e

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: MainScreen(),
        floatingActionButton: CustomFloatActionButton(),
      ),
=======
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ProductController(),
        ),
      ],
      builder: (context, child) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomeScreen(),
        );
      },
>>>>>>> 373a96045ab1d833ba29ce7bfa4cc0e6f436fe6e
    );
  }
}
