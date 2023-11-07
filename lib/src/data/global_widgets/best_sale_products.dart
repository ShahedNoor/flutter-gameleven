import 'package:flutter/material.dart';
import 'package:gameleven/src/controllers/home_controller.dart';
import 'package:gameleven/src/data/utils/colors.dart';
import 'package:gameleven/src/modules/details/details_screen.dart';
import 'package:provider/provider.dart';

class BestSaleProduct extends StatefulWidget {
  final itemCount, leftAlignedText, rightAlignedText;
  BestSaleProduct(
      {super.key,
      required this.itemCount,
      required this.leftAlignedText,
      required this.rightAlignedText});

  @override
  State<BestSaleProduct> createState() => _BestSaleProductState();
}

class _BestSaleProductState extends State<BestSaleProduct> {
  @override
  Widget build(BuildContext context) {
    final bestSaleProductsData =
        Provider.of<HomeController>(context).bestSaleProductsData;
    return Padding(
      padding: const EdgeInsets.fromLTRB(14, 0, 14, 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(bottom: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.leftAlignedText),
                  Text(widget.rightAlignedText),
                ],
              )),
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: (1 / 1.3),
            ),
            itemCount: widget.itemCount,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final aspectRatio = 1 / 1.3;
              final containerWidth =
                  (MediaQuery.of(context).size.width - 38) / 2;
              final containerHeight = containerWidth / aspectRatio;
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(
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
                        title: bestSaleProductsData[index]['title'],
                      ),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        child: Container(
                          margin: EdgeInsets.only(top: 25),
                          width: containerWidth,
                          height: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  bestSaleProductsData[index]['image']),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 12,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          width: containerWidth,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 2.0),
                                child:
                                    Text(bestSaleProductsData[index]['title']),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 4.0),
                                child: Text(
                                    bestSaleProductsData[index]['subtitle']),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    bestSaleProductsData[index]['price'],
                                    style: TextStyle(
                                        color: CustomColors().headingTextColor),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Colors.grey.withOpacity(0.2),
                                      ),
                                      child: Center(
                                        child: Image.asset(
                                          bestSaleProductsData[index]
                                              ['cart_icon'],
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
