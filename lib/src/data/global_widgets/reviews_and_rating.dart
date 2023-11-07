import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gameleven/src/controllers/home_controller.dart';
import 'package:provider/provider.dart';

import '../utils/colors.dart';

class ReviewsAndRating extends StatefulWidget {
  final overallRating, overallRatingBar, bottomRating, individualRatingBar01, individualRating01, individualRatingBar02, individualRating02, individualRatingBar03, individualRating03, individualRatingBar04, individualRating04, individualRatingBar05, individualRating05;
  ReviewsAndRating({
    super.key,
    required this.overallRating,
    required this.overallRatingBar,
    required this.bottomRating,
    required this.individualRatingBar01,
    required this.individualRating01,
    required this.individualRatingBar02,
    required this.individualRating02,
    required this.individualRatingBar03,
    required this.individualRating03,
    required this.individualRatingBar04,
    required this.individualRating04,
    required this.individualRatingBar05,
    required this.individualRating05,
  });

  @override
  State<ReviewsAndRating> createState() => _ReviewsAndRatingState();
}

class _ReviewsAndRatingState extends State<ReviewsAndRating> {
  @override
  Widget build(BuildContext context) {
    final reviewsAndRatingsData =
        Provider.of<HomeController>(context).bestSaleProductsData;
    return Container(
      padding: EdgeInsets.fromLTRB(14, 14, 14, 14),
      color: Colors.white,
      child: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Reviews & Ratings'),
                Text(''),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Column(
                    children: [
                      Text(
                        widget.overallRating,
                        style: TextStyle(fontSize: 40),
                      ),
                      RatingBar.builder(
                        itemSize: 18,
                        initialRating: widget.overallRatingBar,
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
                      Text(
                        widget.bottomRating,
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 2,
                  height: 80,
                  color: Colors.grey.withOpacity(0.5),
                ),
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          RatingBar.builder(
                            itemSize: 18,
                            initialRating: widget.individualRatingBar01,
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
                          SizedBox(
                            width: 10,
                          ),
                          Text(widget.individualRating01),
                        ],
                      ),
                      Row(
                        children: [
                          RatingBar.builder(
                            itemSize: 18,
                            initialRating: widget.individualRatingBar02,
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
                          SizedBox(
                            width: 10,
                          ),
                          Text(widget.individualRating02),
                        ],
                      ),
                      Row(
                        children: [
                          RatingBar.builder(
                            itemSize: 18,
                            initialRating: widget.individualRatingBar03,
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
                          SizedBox(
                            width: 10,
                          ),
                          Text(widget.individualRating03),
                        ],
                      ),
                      Row(
                        children: [
                          RatingBar.builder(
                            itemSize: 18,
                            initialRating: widget.individualRatingBar04,
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
                          SizedBox(
                            width: 10,
                          ),
                          Text(widget.individualRating04),
                        ],
                      ),
                      Row(
                        children: [
                          RatingBar.builder(
                            itemSize: 18,
                            initialRating: widget.individualRatingBar05,
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
                          SizedBox(
                            width: 10,
                          ),
                          Text(widget.individualRating05),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            height: 2,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey.withOpacity(0.5),
          ),
          Container(
            margin: EdgeInsets.only(top: 16, bottom: 10),
            child: InkWell(
              onTap: () {},
              child: Text(
                'View all or write a review',
                style: TextStyle(color: CustomColors().headingTextColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
