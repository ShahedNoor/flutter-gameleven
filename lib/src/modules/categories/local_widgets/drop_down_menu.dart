import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../controllers/home_controller.dart';

class DropDownMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final categoriesDataProvider = Provider.of<HomeController>(context, listen: false);
    return Container(
        padding: EdgeInsets.only(right: 10),
        child: GridView.builder(itemCount: 3,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
        ), itemBuilder: (context, index) {
          return Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5)
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 8),
                  height: 40,
                  width: 40,
                  child: Image.asset(categoriesDataProvider.categoriesData[index]['image']),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(categoriesDataProvider.categoriesData[index]['product_name'], style: TextStyle(fontSize: 8),)
              ],
            ),
          );
        })
    );
  }
}