import 'package:flutter/material.dart';

import '../../../data/utils/colors.dart';

class ShoppingCartBottomNav extends StatefulWidget {
  const ShoppingCartBottomNav({super.key});

  @override
  State<ShoppingCartBottomNav> createState() => _ShoppingCartBottomNavState();
}

class _ShoppingCartBottomNavState extends State<ShoppingCartBottomNav> {
  bool _selected = true;
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 60,
      child: Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      _selected = !_selected;
                    });
                  },
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        color: _selected == true
                            ? CustomColors().headingTextColor
                            : Colors.grey,
                      ),
                      color: _selected == true
                          ? CustomColors().headingTextColor
                          : Colors.transparent,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.done,
                        size: 18,
                        color: _selected == true
                            ? Colors.white
                            : Colors.transparent,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('All')
              ],
            ),
            Row(
              children: [
                Text('Total : '),
                Text(
                  'SAR 2000.00',
                  style: TextStyle(
                    color: CustomColors().headingTextColor,
                  ),
                )
              ],
            ),
            Container(
              height: 40,
              width: 110,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: CustomColors().headingTextColor),
              child: Center(
                child: Text(
                  'Check Out',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
