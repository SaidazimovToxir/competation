import 'package:flutter/material.dart';
import 'package:flutter_competition/views/widgets/button_widget.dart';
import 'package:flutter_competition/views/widgets/container_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.sort)),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                size: 25,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 25,
              )),
          CircleAvatar(
            radius: 15,
            child: Image.asset(
              "assets/images/image.png",
            ),
          )
        ],
      ),
      body: Column(
        children: [
          ContainerWidget(
            firstText: 'Hello',
            secondText: 'Hello',
          ),
          ButtonWidget()
        ],
      ),
    );
  }
}
