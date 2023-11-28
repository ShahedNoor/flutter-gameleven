import 'package:flutter/material.dart';
import 'package:gameleven/src/controllers/home_controller.dart';
import 'package:gameleven/src/data/global_widgets/app_bar.dart';
import 'package:gameleven/src/data/global_widgets/best_sale_products.dart';
import 'package:gameleven/src/data/global_widgets/bottom_navigation_bar.dart';
import 'package:gameleven/src/data/global_widgets/theme_data.dart';
import 'package:gameleven/src/data/utils/colors.dart';
import 'package:flutter/services.dart';
import 'package:gameleven/src/modules/home/local_widgets/brands_menu.dart';
import 'package:gameleven/src/modules/home/local_widgets/daily_features.dart';
import 'package:gameleven/src/modules/home/local_widgets/flash_deals_menu.dart';
import 'package:gameleven/src/modules/home/local_widgets/hot_categories_menu.dart';
import 'package:gameleven/src/modules/home/local_widgets/promotion_menu.dart';
import 'package:gameleven/src/modules/home/local_widgets/top_carousel.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final floatingIcon =
      'assets/images/floating_action_bar_icons/floating_icon.png';
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: CustomColors().backgroundColor,
      ),
    );
  }
  Widget build(BuildContext context) {
    final bestSaleProductsData =
        Provider.of<HomeController>(context).bestSaleProductsData;
    return DefaultTabController(
      length: 5,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: CustomTheme().themeData,
        home: Scaffold(
          backgroundColor: CustomColors().backgroundColor,
          appBar: CustomAppBar(),
          drawer: Drawer(),
          bottomNavigationBar: BottomNavBar(index: 0,),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: ImageIcon(AssetImage(floatingIcon)),
          ),
          body: TabBarView(
            children: [
              ListView(
                children: [
                  TopCarousel(),
                  PromotionMenu(),
                  FlashDealsMenu(),
                  DailyFeatures(),
                  HotCategoriesMenu(),
                  BrandsMenu(),
                  BestSaleProduct(
                    leftAlignedText: 'Best Sale Products',
                    rightAlignedText: '',
                    itemCount: bestSaleProductsData.length,
                  ),
                ],
              ),
              ListView(
                children: [
                  TopCarousel(),
                  PromotionMenu(),
                  FlashDealsMenu(),
                  DailyFeatures(),
                  HotCategoriesMenu(),
                  BrandsMenu(),
                  BestSaleProduct(
                    leftAlignedText: 'Best Sale Products',
                    rightAlignedText: '',
                    itemCount: bestSaleProductsData.length,
                  ),
                ],
              ),
              ListView(
                children: [
                  TopCarousel(),
                  PromotionMenu(),
                  FlashDealsMenu(),
                  DailyFeatures(),
                  HotCategoriesMenu(),
                  BrandsMenu(),
                  BestSaleProduct(
                    leftAlignedText: 'Best Sale Products',
                    rightAlignedText: '',
                    itemCount: bestSaleProductsData.length,
                  ),
                ],
              ),
              ListView(
                children: [
                  TopCarousel(),
                  PromotionMenu(),
                  FlashDealsMenu(),
                  DailyFeatures(),
                  HotCategoriesMenu(),
                  BrandsMenu(),
                  BestSaleProduct(
                    leftAlignedText: 'Best Sale Products',
                    rightAlignedText: '',
                    itemCount: bestSaleProductsData.length,
                  ),
                ],
              ),
              ListView(
                children: [
                  TopCarousel(),
                  PromotionMenu(),
                  FlashDealsMenu(),
                  DailyFeatures(),
                  HotCategoriesMenu(),
                  BrandsMenu(),
                  BestSaleProduct(
                    leftAlignedText: 'Best Sale Products',
                    rightAlignedText: '',
                    itemCount: bestSaleProductsData.length,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
