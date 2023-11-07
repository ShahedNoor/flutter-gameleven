import 'package:flutter/material.dart';
import 'package:gameleven/src/controllers/home_controller.dart';
import 'package:gameleven/src/data/utils/colors.dart';
import 'package:provider/provider.dart';

class FlashDealsMenu extends StatefulWidget {
  const FlashDealsMenu({super.key});

  @override
  State<FlashDealsMenu> createState() => _FlashDealsMenuState();
}

class _FlashDealsMenuState extends State<FlashDealsMenu> {
  @override
  Widget build(BuildContext context) {
    final flashDealsMenuData =
        Provider.of<HomeController>(context).flashDealsMenuData;
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 12),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(14, 8, 14, 0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Flash Deals'),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 4),
                        height: 16,
                        width: 16,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: CustomColors().headingTextColor),
                        child: Center(
                          child: Icon(
                            Icons.flash_on,
                            size: 12,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Text('68:45:15')
                    ],
                  ),
                ],
              ),
              // Flash deals containers
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height:
                              MediaQuery.of(context).size.width < 390 ? 70 : 80,
                          width:
                              MediaQuery.of(context).size.width < 390 ? 70 : 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.withOpacity(0.2)),
                          child: Image.asset(flashDealsMenuData[0]['image']),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Container(
                            width: MediaQuery.of(context).size.width < 390
                                ? 70
                                : 80,
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: CustomColors().buttonColors[0]),
                            child: Center(
                              child: Text(
                                flashDealsMenuData[0]['button_text'],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize:
                                      MediaQuery.of(context).size.width < 390
                                          ? 10
                                          : 13,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height:
                              MediaQuery.of(context).size.width < 390 ? 70 : 80,
                          width:
                              MediaQuery.of(context).size.width < 390 ? 70 : 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.withOpacity(0.2)),
                          child: Image.asset(flashDealsMenuData[1]['image']),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Container(
                            width: MediaQuery.of(context).size.width < 390
                                ? 70
                                : 80,
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: CustomColors().buttonColors[1]),
                            child: Center(
                              child: Text(
                                flashDealsMenuData[1]['button_text'],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize:
                                      MediaQuery.of(context).size.width < 390
                                          ? 10
                                          : 13,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height:
                              MediaQuery.of(context).size.width < 390 ? 70 : 80,
                          width:
                              MediaQuery.of(context).size.width < 390 ? 70 : 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.withOpacity(0.2)),
                          child: Image.asset(flashDealsMenuData[2]['image']),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Container(
                            width: MediaQuery.of(context).size.width < 390
                                ? 70
                                : 80,
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: CustomColors().buttonColors[2]),
                            child: Center(
                              child: Text(
                                flashDealsMenuData[1]['button_text'],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize:
                                      MediaQuery.of(context).size.width < 390
                                          ? 10
                                          : 13,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height:
                              MediaQuery.of(context).size.width < 390 ? 70 : 80,
                          width:
                              MediaQuery.of(context).size.width < 390 ? 70 : 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.withOpacity(0.2)),
                          child: Image.asset(flashDealsMenuData[3]['image']),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Container(
                            width: MediaQuery.of(context).size.width < 390
                                ? 70
                                : 80,
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: CustomColors().buttonColors[3]),
                            child: Center(
                              child: Text(
                                flashDealsMenuData[1]['button_text'],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize:
                                      MediaQuery.of(context).size.width < 390
                                          ? 10
                                          : 13,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
