import 'package:flutter/material.dart';
import 'package:gameleven/src/controllers/home_controller.dart';
import 'package:provider/provider.dart';

import '../../../data/utils/colors.dart';

class DailyFeatures extends StatefulWidget {
  const DailyFeatures({super.key});

  @override
  State<DailyFeatures> createState() => _DailyFeaturesState();
}

class _DailyFeaturesState extends State<DailyFeatures> {
  @override
  Widget build(BuildContext context) {
    final flashDealsMenuData =
        Provider.of<HomeController>(context).flashDealsMenuData;
    return Padding(
      padding: const EdgeInsets.fromLTRB(14, 0, 14, 0),
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
        decoration: BoxDecoration(
            color: CustomColors().dailyFeaturesBackground,
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(14, 8, 14, 0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Daily Features'),
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
                          height: MediaQuery.of(context).size.width < 390
                              ? 70
                              : 100,
                          width:
                              MediaQuery.of(context).size.width < 390 ? 70 : 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: CustomColors().headingTextColor),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Hot Sales',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontStyle: FontStyle.italic),
                                ),
                                Text(
                                  '50% Off'.toUpperCase(),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
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
                              color: Colors.white),
                          child: Image.asset(flashDealsMenuData[1]['image']),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Center(
                            child: Text(
                              flashDealsMenuData[1]['button_text'],
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
                              color: Colors.white),
                          child: Image.asset(flashDealsMenuData[2]['image']),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Center(
                            child: Text(
                              flashDealsMenuData[1]['button_text'],
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
                              color: Colors.white),
                          child: Image.asset(flashDealsMenuData[3]['image']),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Center(
                            child: Text(
                              flashDealsMenuData[1]['button_text'],
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
