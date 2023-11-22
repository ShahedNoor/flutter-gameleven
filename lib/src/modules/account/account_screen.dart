import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gameleven/src/data/global_widgets/theme_data.dart';

import '../../data/utils/colors.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  String profileImage = 'assets/images/profile_images/profile.png';
  List icons = [
    'assets/images/profile_images/icons/home_icon.png',
    'assets/images/profile_images/icons/profile_icon.png',
    'assets/images/profile_images/icons/location_icon.png',
    'assets/images/profile_images/icons/language_icon.png',
    'assets/images/profile_images/icons/logout_icon.png'
  ];
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
        body: ListView(
          children: [
            // Profile image, name & phone number
            Container(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 25),
              color: Colors.white,
              child: Center(
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(profileImage)),
                        borderRadius: BorderRadius.circular(100)
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text('Jonathan Smith', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    Text('018373636733', style: TextStyle(color: Colors.grey),),
                  ],
                )
              ),
            ),
            Container(
              child: Center(
                child: Column(
                  children: [
                    ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(icons[0])
                          )
                        ),
                      ),
                      title: Text('Order Details'),
                      subtitle: Container(width: 250, color: Colors.black,)
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
