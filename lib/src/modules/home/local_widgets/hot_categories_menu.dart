import 'package:flutter/material.dart';
import 'package:gameleven/src/controllers/home_controller.dart';
import 'package:provider/provider.dart';

import '../../../data/utils/colors.dart';

class HotCategoriesMenu extends StatefulWidget {
  const HotCategoriesMenu({super.key});

  @override
  State<HotCategoriesMenu> createState() => _HotCategoriesMenuState();
}

class _HotCategoriesMenuState extends State<HotCategoriesMenu> {
  @override
  Widget build(BuildContext context) {
    final hotCategoriesData =
        Provider.of<HomeController>(context).hotCategoriesData;
    return Padding(
      padding: const EdgeInsets.fromLTRB(14, 14, 14, 0),
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 12),
        decoration: BoxDecoration(
            color: CustomColors().hotCategoriesBackground.withOpacity(0.6),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(14, 8, 14, 0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Hot Categories'),
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
                              color: Colors.white.withOpacity(0.8)),
                          child: Image.asset(hotCategoriesData[0]['image']),
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
                                hotCategoriesData[0]['button_text'],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize:
                                        MediaQuery.of(context).size.width < 390
                                            ? 8
                                            : 10),
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
                              color: Colors.white.withOpacity(0.8)),
                          child: Image.asset(hotCategoriesData[1]['image']),
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
                                hotCategoriesData[1]['button_text'],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize:
                                      MediaQuery.of(context).size.width < 390
                                          ? 8
                                          : 10,
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
                              color: Colors.white.withOpacity(0.8)),
                          child: Image.asset(hotCategoriesData[2]['image']),
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
                                hotCategoriesData[2]['button_text'],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize:
                                      MediaQuery.of(context).size.width < 390
                                          ? 8
                                          : 10,
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
                              color: Colors.white.withOpacity(0.8)),
                          child: Image.asset(hotCategoriesData[3]['image']),
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
                                hotCategoriesData[3]['button_text'],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize:
                                      MediaQuery.of(context).size.width < 390
                                          ? 8
                                          : 10,
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
