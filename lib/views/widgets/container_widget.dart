import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 30,
        left: 20,
        bottom: 20,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              clipBehavior: Clip.hardEdge,
              alignment: Alignment.center,
              height: 200,
              width: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  shape: BoxShape.rectangle,
                  image: const DecorationImage(
                      image: AssetImage("assets/images/three.png"),
                      fit: BoxFit.cover)),
              child: const Text(
                "Living Room",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              clipBehavior: Clip.hardEdge,
              alignment: Alignment.center,
              height: 200,
              width: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  shape: BoxShape.rectangle,
                  image: const DecorationImage(
                      image: AssetImage("assets/images/one.png"),
                      fit: BoxFit.cover)),
              child: const Text(
                "Living Room",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              clipBehavior: Clip.hardEdge,
              alignment: Alignment.center,
              height: 200,
              width: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  shape: BoxShape.rectangle,
                  image: const DecorationImage(
                      image: AssetImage("assets/images/two.png"),
                      fit: BoxFit.cover)),
              child: const Text(
                "Living Room",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
