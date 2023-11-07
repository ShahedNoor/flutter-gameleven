import 'package:flutter/material.dart';
import 'package:gameleven/src/data/utils/colors.dart';

class DescriptionAndSpecifications extends StatefulWidget {
  final description;
  DescriptionAndSpecifications({super.key, required this.description});

  @override
  State<DescriptionAndSpecifications> createState() =>
      _DescriptionAndSpecificationsState();
}

class _DescriptionAndSpecificationsState
    extends State<DescriptionAndSpecifications> {
  var _currentIndex = 0;
  void _onItemTapped(index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2), // Shadow color
            offset: Offset(0, 5), // Horizontal offset
            blurRadius: 5, // Spread of the shadow
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  _onItemTapped(0);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: _currentIndex == 0 ? CustomColors().headingTextColor : Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        offset: Offset(0, 5), // Horizontal offset
                        blurRadius: 5, // Spread of the shadow
                      ),
                    ],
                  ),
                  height: 60,
                  width: MediaQuery.of(context).size.width / 2,
                  child: Center(
                    child: Text(
                      'Description',
                      style: TextStyle(color: _currentIndex == 0 ? Colors.white : Colors.black, fontSize: 16),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  _onItemTapped(1);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: _currentIndex == 1 ? CustomColors().headingTextColor : Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2), // Shadow color
                        offset: Offset(0, 5), // Horizontal offset
                        blurRadius: 5, // Spread of the shadow
                      ),
                    ],
                  ),
                  height: 60,
                  width: MediaQuery.of(context).size.width / 2,
                  child: Center(
                    child: Text(
                      'Specifications',
                      style: TextStyle(color: _currentIndex == 1 ? Colors.white : Colors.black, fontSize: 16),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            color: Colors.white,
            margin: EdgeInsets.fromLTRB(14, 20, 14, 20),
            child: Column(
              children: [
                Text(widget.description)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
