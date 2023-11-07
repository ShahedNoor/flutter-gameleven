import 'package:flutter/material.dart';
import 'package:gameleven/src/data/utils/colors.dart';
import 'package:gameleven/src/modules/shopping_cart/shopping_cart_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final bottomNavIcons = [
    'assets/images/bottom_navigation_bar_icons/menu_icon.png',
    'assets/images/bottom_navigation_bar_icons/heart_icon.png',
    'assets/images/bottom_navigation_bar_icons/cart_icon.png',
    'assets/images/bottom_navigation_bar_icons/user_icon.png',
  ];

  var _currentIndex = 0;
  void _onItemTapped(index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 10,
      child: Container(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    _onItemTapped(0);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ImageIcon(AssetImage(bottomNavIcons[0]), color: _currentIndex == 0 ? CustomColors().headingTextColor : Colors.grey,),
                      Text('Category', style: TextStyle(color: _currentIndex == 0 ? CustomColors().headingTextColor : Colors.grey),)
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    _onItemTapped(1);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ImageIcon(AssetImage(bottomNavIcons[1]), color: _currentIndex == 1 ? CustomColors().headingTextColor : Colors.grey,),
                      Text('Wishlist', style: TextStyle(color: _currentIndex == 1 ? CustomColors().headingTextColor : Colors.grey),),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    _onItemTapped(2);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ShoppingCartScreen()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ImageIcon(AssetImage(bottomNavIcons[2]), color: _currentIndex == 2 ? CustomColors().headingTextColor : Colors.grey,),
                      Text('Cart', style: TextStyle(color: _currentIndex == 2 ? CustomColors().headingTextColor : Colors.grey),),
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    _onItemTapped(3);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ImageIcon(AssetImage(bottomNavIcons[3]), color: _currentIndex == 3 ? CustomColors().headingTextColor : Colors.grey,),
                      Text('Account', style: TextStyle(color: _currentIndex == 3 ? CustomColors().headingTextColor : Colors.grey),),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}