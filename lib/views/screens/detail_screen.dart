import 'package:flutter/material.dart';
import 'package:flutter_competiton/controllers/product_controller.dart';
import 'package:flutter_competiton/views/widgets/product_card.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  ProductController _productController = ProductController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            backgroundColor: Colors.amber,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                "https://images.squarespace-cdn.com/content/v1/63e70128412db810be70533a/cace1682-b1d0-492b-b2ba-757804e7bfdc/HangingWallArt-FeatureImage.png?format=2500w",
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Row(
              children: [
                Text("Have 16 purchesed"),
                Text("data"),
              ],
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16.0),
            sliver: ProductCard(
              productController: _productController,
            ),
          ),
        ],
      ),
    );
  }
}
