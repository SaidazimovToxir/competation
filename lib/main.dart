import 'package:flutter/material.dart';
import 'package:flutter_competition/controllers/cart_provider.dart';
import 'package:flutter_competition/controllers/product_controller.dart';
import 'package:flutter_competition/views/screens/cart_scren_purchase.dart';
import 'package:flutter_competition/views/screens/home_screen.dart';
import 'package:flutter_competition/views/screens/main_screen.dart';
import 'package:flutter_competition/views/screens/payment.dart';
import 'package:flutter_competition/views/screens/detail_screen.dart';
import 'package:flutter_competition/views/screens/succesfull_page.dart';
import 'package:flutter_competition/views/widgets/custom_float_action_button.dart';
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
        ChangeNotifierProvider(
          create: (context) => CartProvider(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
