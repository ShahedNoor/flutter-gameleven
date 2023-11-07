import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../controllers/home_controller.dart';
import '../../../data/utils/colors.dart';

class ProductsInformation extends StatefulWidget {
  const ProductsInformation({super.key});

  @override
  State<ProductsInformation> createState() => _ProductsInformationState();
}

class _ProductsInformationState extends State<ProductsInformation> {
  @override
  Widget build(BuildContext context) {
    final checkoutData =
        Provider.of<HomeController>(context).bestSaleProductsData;
    return Container(
      child: ListView.builder(
          itemCount: checkoutData.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Dismissible(
              key: Key('key'),
              child: Container(
                margin: EdgeInsets.fromLTRB(12, 10, 12, 0),
                padding: EdgeInsets.fromLTRB(25, 20, 25, 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      child:
                      Image.asset(checkoutData[index]['image']),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                            const EdgeInsets.only(bottom: 5.0),
                            child: Text(
                              checkoutData[index]['title'],
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.only(bottom: 5.0),
                            child: Text(
                              checkoutData[index]['original_price'],
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                          Text(
                            checkoutData[index]['price'],
                            style: TextStyle(
                                fontSize: 15,
                                color: CustomColors()
                                    .headingTextColor),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
