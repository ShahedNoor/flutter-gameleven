import 'package:flutter/material.dart';
import 'package:gameleven/src/controllers/home_controller.dart';
import 'package:gameleven/src/data/global_widgets/bottom_navigation_bar.dart';
import 'package:gameleven/src/data/global_widgets/theme_data.dart';
import 'package:provider/provider.dart';

import '../../data/utils/colors.dart';
import 'local_widgets/drop_down_menu.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  final floatingIcon =
      'assets/images/floating_action_bar_icons/floating_icon.png';

  int selectedCategoryIndex = -1;

  int currentIndex = 1;
  void onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  bool isDropdownVisible = false;

  @override
  Widget build(BuildContext context) {
    final categoriesDataProvider = Provider.of<HomeController>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomTheme().themeData,
      home: Scaffold(
        backgroundColor: CustomColors().backgroundColor,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
            color: Colors.black.withOpacity(0.6),
          ),
          title: Text(
            'Categories',
            style:
                TextStyle(color: Colors.black.withOpacity(0.6), fontSize: 17),
          ),
          elevation: 0,
        ),
        bottomNavigationBar: BottomNavBar(index: 0),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: ImageIcon(AssetImage(floatingIcon)),
        ),
        body: Row(
          children: [
            // Main left container
            Container(
                width: MediaQuery.sizeOf(context).width / 3,
                color: CustomColors().categoriesBackgroundColor,
                child: ListView.builder(
                  itemCount: categoriesDataProvider.categoriesData.length - 2,
                  itemBuilder: (context, index) {
                    bool isSelected = currentIndex == index;
                    Color containerColor =
                        isSelected ? Colors.white : Colors.transparent;
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.only(top: 16, bottom: 16),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: Colors.grey, width: 0.2),
                          ),
                          color: containerColor, // Set the container color
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                child: Image.asset(categoriesDataProvider
                                    .categoriesData[index]['image']),
                              ),
                              Text(
                                'Electronic \nDevice',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.6)),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                )),
            // Main right container
            Container(
              padding: EdgeInsets.only(left: 15),
              width: MediaQuery.sizeOf(context).width / 1.5,
              color: CustomColors().backgroundColor,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 15),
                    child: Row(
                      children: [
                        Text(
                          'Gaming Device',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: categoriesDataProvider.categoriesData.length,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      color: Colors.grey, width: 0.5),
                                  bottom: BorderSide(
                                      color: Colors.grey, width: 0.5))),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    categoriesDataProvider.categoriesData[index]
                                        ['subcategory_title'],
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.6)),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 20,
                                          width: 1,
                                          color: Colors.grey,
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            setState(() {
                                              if (selectedCategoryIndex == index) {
                                                selectedCategoryIndex = -1; // Deselect the item if it's already selected
                                              } else {
                                                selectedCategoryIndex = index;
                                              }
                                            });
                                          },
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_sharp,
                                            color:
                                                Colors.black.withOpacity(0.6),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              if (selectedCategoryIndex == index)
                                AnimatedContainer(
                                  duration: Duration(milliseconds: 300),
                                  height: selectedCategoryIndex == index ? 90 : 0,
                                  child: DropDownMenu(),
                                ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}