import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gameleven/src/data/global_widgets/bottom_navigation_bar.dart';
import 'package:gameleven/src/modules/details/details_screen.dart';
import 'package:gameleven/src/modules/wishlist/local_widgets/triangle_clipper.dart';
import 'package:provider/provider.dart';

import '../../controllers/home_controller.dart';
import '../../data/global_widgets/theme_data.dart';
import '../../data/utils/colors.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  final floatingIcon =
      'assets/images/floating_action_bar_icons/floating_icon.png';
  bool isPink = false;

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
    final bestSaleProductsData =
        Provider.of<HomeController>(context).favouriteItems;
    final wishlistItems = Provider.of<HomeController>(context, listen: false);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomTheme().themeData,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Wishlist',
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
        ),
        bottomNavigationBar: BottomNavBar(index: 1),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: ImageIcon(AssetImage(floatingIcon)),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: wishlistItems.favouriteItems.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(
                        image: bestSaleProductsData[index]['image'],
                        price: bestSaleProductsData[index]['price'],
                        original_price: bestSaleProductsData[index]
                        ['original_price'],
                        discount: bestSaleProductsData[index]['discount'],
                        short_description: bestSaleProductsData[index]
                        ['short_description'],
                        rating: bestSaleProductsData[index]['rating'],
                        voucherTitle: bestSaleProductsData[index]
                        ['voucher_title'],
                        voucherDiscount: bestSaleProductsData[index]
                        ['voucher_discount'],
                        voucherValidity: bestSaleProductsData[index]
                        ['voucher_validity'],
                        description: bestSaleProductsData[index]
                        ['description'],
                        overallRating: bestSaleProductsData[index]
                        ['overall_rating'],
                        overallRatingBar: bestSaleProductsData[index]
                        ['overall_rating_bar'],
                        bottomRating: bestSaleProductsData[index]
                        ['bottom_rating'],
                        individualRatingBar01: bestSaleProductsData[index]
                        ['individual_rating_bar_01'],
                        individualRating01: bestSaleProductsData[index]
                        ['individual_rating_01'],
                        individualRatingBar02: bestSaleProductsData[index]
                        ['individual_rating_bar_02'],
                        individualRating02: bestSaleProductsData[index]
                        ['individual_rating_02'],
                        individualRatingBar03: bestSaleProductsData[index]
                        ['individual_rating_bar_03'],
                        individualRating03: bestSaleProductsData[index]
                        ['individual_rating_03'],
                        individualRatingBar04: bestSaleProductsData[index]
                        ['individual_rating_bar_04'],
                        individualRating04: bestSaleProductsData[index]
                        ['individual_rating_04'],
                        individualRatingBar05: bestSaleProductsData[index]
                        ['individual_rating_bar_05'],
                        individualRating05: bestSaleProductsData[index]
                        ['individual_rating_05'],
                        wishList: bestSaleProductsData[index],
                        title: bestSaleProductsData[index]['title'],
                      ),));
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 10),
                      padding: EdgeInsets.only(bottom: 25),
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(16, 30, 16, 0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 90,
                                      width: 90,
                                      child: Center(
                                        child: Image.asset(wishlistItems
                                            .favouriteItems[index]['image']),
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
                                              wishlistItems
                                                      .bestSaleProductsData[
                                                  index]['title'],
                                              style: TextStyle(fontSize: 16),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 6.0),
                                            child: Text(
                                              wishlistItems
                                                      .bestSaleProductsData[
                                                  index]['original_price'],
                                              style: TextStyle(fontSize: 15),
                                            ),
                                          ),
                                          Text(
                                            wishlistItems
                                                    .bestSaleProductsData[index]
                                                ['price'],
                                            style: TextStyle(
                                                color: CustomColors()
                                                    .headingTextColor),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          // Stack for delete button
                          Positioned(
                            top: 0,
                            right: 0,
                            child: ClipPath(
                              clipper: TriangleClipper(),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    isPink = !isPink;
                                  });
                                },
                                child: InkWell(
                                  onTap: () {
                                    wishlistItems.removeFromWishlist(index);
                                  },
                                  child: Container(
                                    height: 70,
                                    width: 70,
                                    color: isPink
                                        ? CustomColors().headingTextColor
                                        : Colors.grey.withOpacity(0.5),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          top: 12,
                                          right: 5,
                                          child: Icon(
                                            Icons.delete_forever,
                                            color: isPink
                                                ? Colors.white
                                                : Colors.black.withOpacity(0.6),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
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
