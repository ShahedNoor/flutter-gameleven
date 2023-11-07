import 'package:flutter/material.dart';
import 'package:gameleven/src/controllers/tab_bar_controller.dart';

import '../utils/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => Size.fromHeight(90);
  CustomAppBar({super.key});
  final tabBarControllerData = TabBarController().tabBarController;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: CustomColors().backgroundColor,
      elevation: 0,
      bottom: TabBar(
        isScrollable: true,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorWeight: 3,
        tabs: [
          Text(
            tabBarControllerData[0],
            style:
                TextStyle(fontSize: 12, color: CustomColors().headingTextColor),
          ),
          Text(
            tabBarControllerData[1],
            style:
                TextStyle(fontSize: 12, color: CustomColors().headingTextColor),
          ),
          Text(
            tabBarControllerData[2],
            style:
                TextStyle(fontSize: 12, color: CustomColors().headingTextColor),
          ),
          Text(
            tabBarControllerData[3],
            style:
                TextStyle(fontSize: 12, color: CustomColors().headingTextColor),
          ),
          Text(
            tabBarControllerData[4],
            style:
                TextStyle(fontSize: 12, color: CustomColors().headingTextColor),
          ),
        ],
      ),
      actions: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width / 1.2,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: CustomColors().searchBarColor),
          child: ListTile(
            leading: Icon(Icons.search_outlined),
            title: TextFormField(
              decoration: InputDecoration(
                  hintText: 'What would you like to buy?',
                  border: InputBorder.none),
            ),
          ),
        ),
      ],
      iconTheme: IconThemeData(color: CustomColors().iconColor),
    );
  }
}
