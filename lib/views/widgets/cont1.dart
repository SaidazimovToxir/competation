import 'package:flutter/material.dart';
import 'package:flutter_competition/views/screens/detail_screen.dart';

class Cont1Widget extends StatelessWidget {
  const Cont1Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 30,
      ),
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (ctx) => DetailScreen(),
                  ),
                );
              },
              child: Container(
                clipBehavior: Clip.hardEdge,
                alignment: Alignment.center,
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  shape: BoxShape.rectangle,
                  image: const DecorationImage(
                    image: AssetImage("assets/images/three.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: const Text(
                  "Living Room",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (ctx) => const DetailScreen(),
                  ),
                );
              },
              child: Container(
                clipBehavior: Clip.hardEdge,
                alignment: Alignment.center,
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  shape: BoxShape.rectangle,
                  image: const DecorationImage(
                    image: AssetImage("assets/images/one.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: const Text(
                  "Dining Room",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (ctx) => const DetailScreen(),
                  ),
                );
              },
              child: Container(
                clipBehavior: Clip.hardEdge,
                alignment: Alignment.center,
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  shape: BoxShape.rectangle,
                  image: const DecorationImage(
                    image: AssetImage("assets/images/two.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: const Text(
                  "Studio",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
