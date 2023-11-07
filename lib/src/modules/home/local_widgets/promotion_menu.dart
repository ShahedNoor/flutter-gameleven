import 'package:flutter/material.dart';
import 'package:gameleven/src/controllers/home_controller.dart';
import 'package:provider/provider.dart';

import '../../../data/utils/colors.dart';

class PromotionMenu extends StatefulWidget {
  const PromotionMenu({super.key});

  @override
  State<PromotionMenu> createState() => _PromotionMenuState();
}

class _PromotionMenuState extends State<PromotionMenu> {
  @override
  Widget build(BuildContext context) {
    final promotionMenuData = Provider.of<HomeController>(context).promotionMenuData;
    return Padding(
      padding: const EdgeInsets.fromLTRB(14, 2, 14, 0),
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 14, 0, 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(14, 0, 14, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.width < 390 ? 70 : 80,
                    width: MediaQuery.of(context).size.width < 390 ? 70 : 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(colors: [
                        CustomColors().promotionMenuColor[0],
                        CustomColors().promotionMenuColor[0].withOpacity(0.7)
                      ], begin: Alignment.bottomRight, end: Alignment.topLeft),
                    ),
                    child: Image.asset(promotionMenuData[0]['image']),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(promotionMenuData[0]['title']),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.width < 390 ? 70 : 80,
                    width: MediaQuery.of(context).size.width < 390 ? 70 : 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(colors: [
                        CustomColors().promotionMenuColor[1],
                        CustomColors().promotionMenuColor[1].withOpacity(0.7)
                      ], begin: Alignment.bottomRight, end: Alignment.topLeft),
                    ),
                    child: Image.asset(promotionMenuData[1]['image']),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(promotionMenuData[0]['title']),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.width < 390 ? 70 : 80,
                    width: MediaQuery.of(context).size.width < 390 ? 70 : 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(colors: [
                        CustomColors().promotionMenuColor[2],
                        CustomColors().promotionMenuColor[2].withOpacity(0.7)
                      ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                    ),
                    child: Image.asset(promotionMenuData[2]['image']),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(promotionMenuData[2]['title']),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.width < 390 ? 70 : 80,
                    width: MediaQuery.of(context).size.width < 390 ? 70 : 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(colors: [
                        CustomColors().promotionMenuColor[3],
                        CustomColors().promotionMenuColor[3].withOpacity(0.8)
                      ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                    ),
                    child: Image.asset(promotionMenuData[3]['image']),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(promotionMenuData[3]['title']),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
