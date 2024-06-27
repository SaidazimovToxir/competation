import 'package:flutter/material.dart';
import 'package:flutter_competition/views/screens/cart_scren_purchase.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: CartScreenPurchase());
  }
}
