import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gameleven/src/controllers/home_controller.dart';
import 'package:gameleven/src/data/global_widgets/theme_data.dart';
import 'package:gameleven/src/modules/shopping_cart/local_widgets/shopping_cart_bottom_app_bar.dart';
import 'package:provider/provider.dart';

import '../../data/utils/colors.dart';

class ShoppingCartScreen extends StatefulWidget {
  const ShoppingCartScreen({super.key});

  @override
  State<ShoppingCartScreen> createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: CustomColors().backgroundColor,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final shoppingCartData = Provider.of<HomeController>(context).cartItems;
    final _shoppingCartData = Provider.of<HomeController>(context);
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
              onPressed: () {
                _shoppingCartData.removeSelectedItemsFromCart();
              },
              icon: Icon(
                Icons.delete_outline,
                color: Colors.black,
              ),
            )
          ],
        ),
        bottomNavigationBar: ShoppingCartBottomNav(),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: shoppingCartData.length,
                itemBuilder: (context, index) {
                  return Container(
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
                                      child: Image.asset(
                                          shoppingCartData[index]['image']),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 6.0),
                                          child: Text(
                                            shoppingCartData[index]['title'],
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 6.0),
                                          child: Text(
                                            shoppingCartData[index]
                                                ['original_price'],
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        ),
                                        Text(
                                          shoppingCartData[index]['price'],
                                          style: TextStyle(
                                              color: CustomColors()
                                                  .headingTextColor),
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
                                      shoppingCartData[index]['selected'] = !shoppingCartData[index]['selected'];
                                    });
                                  },
                                  child: Container(
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      border: Border.all(
                                        color: shoppingCartData[index]['selected'] == true
                                            ? CustomColors().headingTextColor
                                            : Colors.grey,
                                      ),
                                      color: shoppingCartData[index]['selected'] == true
                                          ? CustomColors().headingTextColor
                                          : Colors.transparent,
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.done,
                                        size: 18,
                                        color: shoppingCartData[index]['selected'] == true
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
                                          setState(() {
                                            shoppingCartData[index]['quantity']++;
                                          });
                                        },
                                        child: Container(
                                          height: 35,
                                          width: 35,
                                          decoration: BoxDecoration(
                                              color:
                                                  Colors.grey.withOpacity(0.2),
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: Center(
                                            child: Icon(Icons.add),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 35,
                                        width: 35,
                                        child: Center(
                                          child: Text(
                                            shoppingCartData[index]['quantity'].toString(),
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 18),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            if (shoppingCartData[index]['quantity'] == 1) {
                                            } else {
                                              shoppingCartData[index]['quantity']--;
                                            }
                                          });
                                        },
                                        child: Container(
                                          height: 35,
                                          width: 35,
                                          decoration: BoxDecoration(
                                              color:
                                                  Colors.grey.withOpacity(0.2),
                                              borderRadius:
                                                  BorderRadius.circular(5)),
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
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}