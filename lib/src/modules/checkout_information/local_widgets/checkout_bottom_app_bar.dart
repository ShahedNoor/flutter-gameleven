import 'package:flutter/material.dart';
import 'package:gameleven/src/data/utils/colors.dart';

class CheckoutBottomAppBar extends StatefulWidget {
  const CheckoutBottomAppBar({super.key});

  @override
  State<CheckoutBottomAppBar> createState() => _CheckoutBottomAppBarState();
}

class _CheckoutBottomAppBarState extends State<CheckoutBottomAppBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 85,
      child: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(14, 10, 14, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Item: 02', style: TextStyle(color: Colors.grey),),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(text: 'Total: ', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                      TextSpan(text: 'SAR 500000.00', style: TextStyle(fontWeight: FontWeight.normal, color: Colors.grey)),
                    ]),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 40,
                margin: EdgeInsets.fromLTRB(14, 0, 14, 0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: CustomColors().headingTextColor),
                child: Center(
                  child: Text(
                    'Place Order'.toUpperCase(),
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
