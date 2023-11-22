import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gameleven/src/data/global_widgets/bottom_navigation_bar.dart';
import 'package:gameleven/src/data/global_widgets/theme_data.dart';
import 'package:gameleven/src/modules/account/local_widgets/profile_bottom_section.dart';
import 'package:gameleven/src/modules/account/local_widgets/profile_middle_section.dart';
import 'package:gameleven/src/modules/account/local_widgets/profile_top_section.dart';

import '../../data/utils/colors.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomTheme().themeData,
      home: Scaffold(
        backgroundColor: CustomColors().backgroundColor,
        appBar: AppBar(
          backgroundColor: CustomColors().backgroundColor,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black.withOpacity(0.6),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            'Account',
            style: TextStyle(
              color: Colors.black.withOpacity(0.6),
            ),
          ),
          elevation: 0,
        ),
        bottomNavigationBar: BottomNavBar(index: 3,),
        floatingActionButtonLocation:
        FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: ImageIcon(AssetImage(floatingIcon)),
        ),
        body: ListView(
          children: [
            // Profile image, name & phone number
            ProfileTopSection(),
            // Settings section
            ProfileMiddleSection(),
            //   Logout section
            ProfileBottomSection()
          ],
        ),
      ),
    );
  }
}
