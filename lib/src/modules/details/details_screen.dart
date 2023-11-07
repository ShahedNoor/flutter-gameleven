import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gameleven/src/controllers/home_controller.dart';
import 'package:gameleven/src/data/global_widgets/best_sale_products.dart';
import 'package:gameleven/src/data/global_widgets/reviews_and_rating.dart';
import 'package:gameleven/src/data/global_widgets/theme_data.dart';
import 'package:gameleven/src/data/utils/colors.dart';
import 'package:gameleven/src/modules/details/local_widgets/apply_voucher.dart';
import 'package:gameleven/src/modules/details/local_widgets/custom_bottom_app_bar.dart';
import 'package:gameleven/src/modules/details/local_widgets/description_and_specifications.dart';
import 'package:gameleven/src/modules/details/local_widgets/product_details.dart';
import 'package:gameleven/src/modules/details/local_widgets/top_carousel.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DetailsScreen extends StatefulWidget {
  final image,
      price,
      original_price,
      discount,
      short_description,
      rating,
      voucherTitle,
      voucherDiscount,
      voucherValidity,
      description,
      overallRating,
      overallRatingBar,
      bottomRating,
      individualRatingBar01,
      individualRating01,
      individualRatingBar02,
      individualRating02,
      individualRatingBar03,
      individualRating03,
      individualRatingBar04,
      individualRating04,
      individualRatingBar05,
      individualRating05,
      // Constructor for BottomSheet
      title;
  DetailsScreen({
    super.key,
    required this.image,
    required this.price,
    required this.original_price,
    required this.discount,
    required this.short_description,
    required this.rating,
    required this.voucherTitle,
    required this.voucherDiscount,
    required this.voucherValidity,
    required this.description,
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
    required this.title
  });

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.white,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final detailsScreenData =
        Provider.of<HomeController>(context).bestSaleProductsData;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomTheme().themeData,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 40,
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
          ),
        ),
        bottomNavigationBar: CustomBottomAppBar(
          image: widget.image,
          title: widget.title,
          originalPrice: widget.original_price,
          price: widget.price,
        ),
        body: ListView(
          children: [
            TopCarousel(image: widget.image),
            ProductDetails(
              price: widget.price,
              original_price: widget.original_price,
              discount: widget.discount,
              short_description: widget.short_description,
              rating: widget.rating,
            ),
            ApplyVoucher(
              voucherTitle: widget.voucherTitle,
              voucherDiscount: widget.voucherDiscount,
              voucherValidity: widget.voucherValidity,
            ),
            DescriptionAndSpecifications(
              description: widget.description,
            ),
            // Related Products
            Container(
              margin: EdgeInsets.only(top: 20),
              child: BestSaleProduct(
                  itemCount: detailsScreenData.length,
                  leftAlignedText: 'Related Products',
                  rightAlignedText: 'View All'),
            ),
            ReviewsAndRating(
              overallRating: widget.overallRating,
              overallRatingBar: widget.overallRatingBar,
              bottomRating: widget.bottomRating,
              individualRatingBar01: widget.individualRatingBar01,
              individualRating01: widget.individualRating01,
              individualRatingBar02: widget.individualRatingBar02,
              individualRating02: widget.individualRating02,
              individualRatingBar03: widget.individualRatingBar03,
              individualRating03: widget.individualRating03,
              individualRatingBar04: widget.individualRatingBar04,
              individualRating04: widget.individualRating04,
              individualRatingBar05: widget.individualRatingBar05,
              individualRating05: widget.individualRating05,
            ),
          ],
        ),
      ),
    );
  }
}
