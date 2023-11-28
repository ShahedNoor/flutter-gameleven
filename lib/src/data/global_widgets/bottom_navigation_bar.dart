import 'package:flutter/material.dart';
import 'package:gameleven/src/controllers/home_controller.dart';
import 'package:gameleven/src/data/utils/colors.dart';
import 'package:gameleven/src/modules/account/account_screen.dart';
import 'package:gameleven/src/modules/shopping_cart/shopping_cart_screen.dart';
import 'package:provider/provider.dart';

class BottomNavBar extends StatefulWidget {
  final index;
  const BottomNavBar({super.key, required this.index});

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

  late int _currentIndex = widget.index;
  void _onItemTapped(index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final cartItemProvider = Provider.of<HomeController>(context).cartItems;
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
                Container(
                  child: Stack(
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
                      Positioned(
                        top: 6,
                        right: 10,
                        child: Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: CustomColors().headingTextColor
                          ),
                          child: Center(
                            child: Text(cartItemProvider.length.toString(), style: TextStyle(color: Colors.white, fontSize: 10),),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    _onItemTapped(3);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AccountScreen()));
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
