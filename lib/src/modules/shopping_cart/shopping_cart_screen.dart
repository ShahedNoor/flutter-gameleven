import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gameleven/src/controllers/home_controller.dart';
import 'package:gameleven/src/data/global_widgets/theme_data.dart';
import 'package:gameleven/src/modules/shopping_cart/local_widgets/shopping_cart_bottom_app_bar.dart';
import 'package:provider/provider.dart';

import '../../data/utils/colors.dart';
import '../checkout_information/checkout_information_screen.dart';

class ShoppingCartScreen extends StatefulWidget {
  const ShoppingCartScreen({super.key});

  @override
  State<ShoppingCartScreen> createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  bool _selected = false;
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: CustomColors().backgroundColor,
      ),
    );
  }

  var counter = 1;
  void productIncrement() {
    setState(() {
      counter ++;
    });
  }void productDecrement() {
    setState(() {
      counter --;
    });
  }

  @override
  Widget build(BuildContext context) {
    final shoppingCartData =
        Provider.of<HomeController>(context).bestSaleProductsData;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomTheme().themeData,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Shopping Cart',
            style:
                TextStyle(color: Colors.black.withOpacity(0.6), fontSize: 17),
          ),
          toolbarHeight: 40,
          elevation: 0,
          backgroundColor: CustomColors().backgroundColor,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.delete_outline,
                color: Colors.black,
              ),
            )
          ],
        ),
        bottomNavigationBar: ShoppingCartBottomNav(),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10),
              padding: EdgeInsets.only(bottom: 25),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(16, 30, 16, 0),
                    child: Stack(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 90,
                              width: 90,
                              child: Center(
                                child:
                                    Image.asset(shoppingCartData[0]['image']),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 6.0),
                                    child: Text(
                                      shoppingCartData[0]['title'],
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 6.0),
                                    child: Text(
                                      shoppingCartData[0]['original_price'],
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ),
                                  Text(
                                    shoppingCartData[0]['price'],
                                    style: TextStyle(
                                        color: CustomColors().headingTextColor),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Positioned(
                          top: 0,
                          right: 10,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                _selected = !_selected;
                              });
                            },
                            child: Container(
                              height: 25,
                              width: 25,
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
                        ),
                        Positioned(
                          bottom: 0,
                          right: 10,
                          child: Container(
                            child: Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    productIncrement();
                                  },
                                  child: Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                        color: Colors.grey.withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Center(
                                      child: Icon(Icons.add),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 35,
                                  width: 35,
                                  child: Center(
                                    child: Text(counter.toString(),
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 18),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    if (counter == 1) {

                                    }
                                    else {
                                      productDecrement();
                                    }
                                  },
                                  child: Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                        color: Colors.grey.withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Center(
                                      child: Icon(Icons.remove),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
