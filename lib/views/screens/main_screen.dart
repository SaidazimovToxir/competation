import 'package:flutter/material.dart';
import 'package:flutter_competiton/utils/app_constabs.dart';
import 'package:flutter_competiton/views/widgets/custom_scroll.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String _popUpMenuVal = 'Sort by';
  int _tappedIndex = -1; // To store the index of the tapped widget

  void _handleTap(int index) {
    _tappedIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                      buttonText: AppConstants.customScrollWidgetValues[index],
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
                    color: Color(0xFFF3F6F8),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Text(
                        _popUpMenuVal,
                        style: TextStyle(color: Colors.grey),
                      ),
                      Icon(Icons.arrow_drop_down, color: Colors.grey),
                    ],
                  ),
                ),
                onSelected: (String result) {
                  setState(() {
                    _popUpMenuVal = result;
                  });
                  print(_popUpMenuVal);
                },
                itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                  const PopupMenuItem<String>(
                    value: 'Popular',
                    child: Text('Popular'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'New',
                    child: Text('New'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'Best Selling',
                    child: Text('Best Selling'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'Featured',
                    child: Text('Featured'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
