import 'package:flutter/material.dart';
import 'package:gameleven/src/controllers/home_controller.dart';
import 'package:gameleven/src/modules/checkout_information/checkout_information_screen.dart';
import 'package:provider/provider.dart';

import '../../../data/utils/colors.dart';

class CustomBottomAppBar extends StatefulWidget {
  var image, title, originalPrice, price, wishList;
  CustomBottomAppBar(
      {super.key,
      required this.image,
      required this.title,
      required this.originalPrice,
      this.price,
      this.wishList});

  @override
  State<CustomBottomAppBar> createState() => _CustomBottomAppBarState();
}

class _CustomBottomAppBarState extends State<CustomBottomAppBar> {
  // BottomSheet
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return Container(
          height: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
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
                            child: Image.asset(widget.image),
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
                                  widget.title,
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 6.0),
                                child: Text(
                                  widget.originalPrice,
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),
                              Text(
                                widget.price,
                                style: TextStyle(
                                    color: CustomColors().headingTextColor),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: 0,
                      right: 10,
                      child: Container(
                        child: Row(
                          children: [
                            Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: Icon(Icons.add),
                              ),
                            ),
                            Container(
                              height: 35,
                              width: 35,
                              child: Center(
                                child: Text(
                                  '01',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 18),
                                ),
                              ),
                            ),
                            Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: Icon(Icons.remove),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(5, 0),
                        color: Colors.grey.withOpacity(0.3),
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: Container(
                    margin: EdgeInsets.fromLTRB(25, 0, 25, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 40,
                          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey.withOpacity(0.2),
                          ),
                          child: Center(
                            child: Text('Add to Cart'),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    CheckoutInformationScreen(),
                              ),
                            );
                          },
                          child: Container(
                            height: 40,
                            padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
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
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final favouriteItemsProvider =
        Provider.of<HomeController>(context, listen: false);
    return BottomAppBar(
      child: Container(
        padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: IconButton(
                  onPressed: () {
                    setState(() {
                      favouriteItemsProvider
                          .addToFavourite(widget.wishList['id']);
                    });
                  },
                  icon: Icon(Icons.favorite_border_outlined),
                  iconSize: 30,
                  color: widget.wishList['isFavourite'] == false
                      ? Colors.grey
                      : CustomColors().headingTextColor),
            ),
            Container(
              height: 40,
              width: 110,
              decoration: BoxDecoration(
                  border: Border.all(color: CustomColors().headingTextColor),
                  borderRadius: BorderRadius.circular(5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 4.0),
                    child: Text(
                      'My Cart',
                      style: TextStyle(color: CustomColors().headingTextColor),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Color(0xFFFC6600).withOpacity(0.2),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text('1'),
                    ),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {
                _showBottomSheet(context);
              },
              child: Container(
                height: 40,
                width: 110,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: CustomColors().headingTextColor),
                child: Center(
                  child: Text(
                    'Buy Now',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
