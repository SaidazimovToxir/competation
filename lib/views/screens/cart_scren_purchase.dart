import 'package:flutter/material.dart';
import 'package:flutter_competition/views/widgets/container_widget.dart';

class CartScreenPurchase extends StatelessWidget {
  const CartScreenPurchase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ExpansionTile(
            title: const Text(
              "Products",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Card(
                          child: Column(
                            children: [
                              SizedBox(
                                height:
                                    150, // Barcha kartochkalar uchun bir xil balandlik
                                child: Image.asset(
                                  "assets/images/pr1.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(height: 8.0),
                              const Text("Lampochka"),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Card(
                          child: Column(
                            children: [
                              SizedBox(
                                height:
                                    150, // Barcha kartochkalar uchun bir xil balandlik
                                child: Image.asset(
                                  "assets/images/pr2.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(height: 8.0),
                              const Text("Mini Garden"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 50),
          ContainerWidget(
            firstText: "Shipping",
            secondText: "2-3days",
          ),
          ContainerWidget(
            firstText: "Discound code",
            secondText: "-\$30.00",
            showImage: false,
            additionalWidget: Row(
              children: [
                FilledButton(
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.green.shade300,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text("CS***2"),
                ),
                const SizedBox(width: 10),
                const Icon(
                  Icons.check,
                  color: Colors.green,
                )
              ],
            ),
          ),
          SizedBox(height: 50),
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey,
          ),
          const Padding(
            padding: const EdgeInsets.only(right: 10, left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Shipping",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
                Text(
                  "Free",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          const Padding(
            padding: const EdgeInsets.only(right: 10, left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Products",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
                Text(
                  "2",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.only(right: 10, left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                Text(
                  "560.00\$",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
            ),
            onPressed: () {},
            child: const Text(
              "Buy Now",
              style: TextStyle(color: Colors.white),    
            ),
          )
        ],
      ),
    );
  }
}
