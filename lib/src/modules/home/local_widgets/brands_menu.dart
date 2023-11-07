import 'package:flutter/material.dart';
import 'package:gameleven/src/controllers/home_controller.dart';
import 'package:provider/provider.dart';

import '../../../data/utils/colors.dart';

class BrandsMenu extends StatefulWidget {
  const BrandsMenu({super.key});

  @override
  State<BrandsMenu> createState() => _BrandsMenuState();
}

class _BrandsMenuState extends State<BrandsMenu> {
  @override
  Widget build(BuildContext context) {
    final brandsMenuData = Provider.of<HomeController>(context).brandsMenuData;
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
        decoration: BoxDecoration(
            color: CustomColors().brandsMenuBackground.withOpacity(0.2), borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(14, 8, 14, 0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Brands'),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'View More',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
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
                              color: Colors.white.withOpacity(0.8)),
                          child: Image.asset(brandsMenuData[0]['top_image']),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Container(
                            width: MediaQuery.of(context).size.width < 390
                                ? 70
                                : 80,
                            height: 30,
                            child: Center(
                                child: Image.asset(
                                    brandsMenuData[0]['bottom_image'])),
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
                          child: Image.asset(brandsMenuData[1]['top_image']),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Container(
                            width: MediaQuery.of(context).size.width < 390
                                ? 70
                                : 80,
                            height: 30,
                            child: Center(
                                child: Image.asset(
                                    brandsMenuData[1]['bottom_image'])),
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
                          child: Image.asset(brandsMenuData[2]['top_image']),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Container(
                            width: MediaQuery.of(context).size.width < 390
                                ? 70
                                : 80,
                            height: 30,
                            child: Center(
                                child: Image.asset(
                                    brandsMenuData[2]['bottom_image'])),
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
                          child: Image.asset(brandsMenuData[3]['top_image']),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Container(
                            width: MediaQuery.of(context).size.width < 390
                                ? 70
                                : 80,
                            height: 30,
                            child: Center(
                                child: Image.asset(
                                    brandsMenuData[3]['bottom_image'])),
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
