import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gameleven/src/controllers/home_controller.dart';
import 'package:gameleven/src/data/global_widgets/theme_data.dart';
import 'package:gameleven/src/data/utils/colors.dart';
import 'package:gameleven/src/modules/checkout_information/local_widgets/billing_information.dart';
import 'package:gameleven/src/modules/checkout_information/local_widgets/checkout_bottom_app_bar.dart';
import 'package:gameleven/src/modules/checkout_information/local_widgets/order_summary.dart';
import 'package:gameleven/src/modules/checkout_information/local_widgets/products_information.dart';
import 'package:provider/provider.dart';

class CheckoutInformationScreen extends StatefulWidget {
  const CheckoutInformationScreen({super.key});

  @override
  State<CheckoutInformationScreen> createState() =>
      _CheckoutInformationScreenState();
}

class _CheckoutInformationScreenState extends State<CheckoutInformationScreen> {
  @override
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
    final checkoutData =
        Provider.of<HomeController>(context).bestSaleProductsData;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomTheme().themeData,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Checkout Information',
            style:
                TextStyle(color: Colors.black.withOpacity(0.6), fontSize: 17),
          ),
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
        bottomNavigationBar: CheckoutBottomAppBar(),
        body: ListView(
          children: [
            BillingInformation(),
            ProductsInformation(),
            OrderSummary(),
          ],
        ),
      ),
    );
  }
}
