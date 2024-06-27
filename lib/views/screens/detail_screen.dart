import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

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
            sliver: SliverGrid.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10.0,
              ),
              itemBuilder: (context, index) {
                return Card(
                  color: const Color.fromARGB(255, 199, 213, 224),
                  clipBehavior: Clip.hardEdge,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.network(
                              "https://i.ebayimg.com/thumbs/images/g/~YkAAOSwupJkwKKb/s-l960.webp",
                              width: 100,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow.shade700,
                                ),
                                Text(
                                  "(4.6)",
                                  style: TextStyle(
                                    color: Colors.yellow.shade700,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Text(
                          "Title sgfsgsssgsgfsgsssgsgfsgsssgsgfsgsssg",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Text(
                          "category",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "\$142.00",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w300,
                                color: Color(0xff0A982F),
                              ),
                            ),
                            IconButton.filled(
                              style: IconButton.styleFrom(
                                backgroundColor: const Color(0xff0A982F),
                              ),
                              onPressed: () {},
                              icon: const Icon(Icons.favorite),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
