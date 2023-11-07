import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';

import '../../../controllers/home_controller.dart';
import '../../../data/utils/colors.dart';

class ProductDetails extends StatefulWidget {
  final price, original_price, discount, short_description, rating;
  ProductDetails({super.key, required this.price, this.original_price, this.discount, this.short_description, this.rating});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    final detailsScreenData =
        Provider.of<HomeController>(context).bestSaleProductsData;
    return Container(
      color: Colors.grey.withOpacity(0.1),
      child: Container(
        margin: EdgeInsets.fromLTRB(14, 0, 14, 0),
        padding: EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.price,
                  style: TextStyle(
                      fontSize: 21,
                      color: CustomColors().headingTextColor),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.share))
              ],
            ),
            Row(
              children: [
                Text(
                  widget.original_price,
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      decoration: TextDecoration.lineThrough),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    widget.discount,
                    style: TextStyle(fontSize: 16),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Column(
                children: [
                  Text(widget.short_description)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 18.0),
              child: Row(
                children: [
                  RatingBar.builder(
                    itemSize: 18,
                    initialRating: 4.5,
                    minRating: 0,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: CustomColors().headingTextColor,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(widget.rating),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
