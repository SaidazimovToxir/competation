import 'package:flutter/material.dart';
import 'package:flutter_competiton/utils/app_constabs.dart';
import 'package:flutter_competiton/views/widgets/button_widget.dart';
import 'package:flutter_competiton/views/widgets/container_widget.dart';
import 'package:flutter_competiton/views/widgets/custom_scroll.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _popUpMenuVal = 'Sort by';
  int _tappedIndex = -1;

  void _handleTap(int index) {
    _tappedIndex = index;
    setState(() {});
  }

  List<String> texts = [
    'apple',
    'fwgapple',
    'appgwrgle',
    'applegwr',
    'applewg',
    'applgrwe',
  ];

  void _sortTexts(String criterion) {
    if (criterion == 'A-Z') {
      texts.sort((a, b) => a.compareTo(b));
    } else if (criterion == 'Z-A') {
      texts.sort((a, b) => b.compareTo(a));
    }
    setState(() {});
  }

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
          ContainerWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: SizedBox(
              height: 45,
              child: Row(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: AppConstants.customScrollWidgetValues.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) =>
                          CustomScrollWidget(
                        buttonText:
                            AppConstants.customScrollWidgetValues[index],
                        index: index,
                        tappedIndex: _tappedIndex,
                        onTap: _handleTap,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Have _ products',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                PopupMenuButton<String>(
                  color: Colors.white,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF3F6F8),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Text(
                          _popUpMenuVal,
                          style: const TextStyle(color: Colors.grey),
                        ),
                        const Icon(Icons.arrow_drop_down, color: Colors.grey),
                      ],
                    ),
                  ),
                  onSelected: (String result) {
                    _popUpMenuVal = result;
                    _sortTexts(result);
                    setState(() {});
                  },
                  itemBuilder: (BuildContext context) =>
                      <PopupMenuEntry<String>>[
                    const PopupMenuItem<String>(
                      value: 'A-Z',
                      child: Text('A-Z'),
                    ),
                    const PopupMenuItem<String>(
                      value: 'Z-A',
                      child: Text('Z-A'),
                    ),
                    const PopupMenuItem<String>(
                      value: 'Price',
                      child: Text('Price'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: texts.length,
              itemBuilder: (context, index) => Text(
                texts[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
