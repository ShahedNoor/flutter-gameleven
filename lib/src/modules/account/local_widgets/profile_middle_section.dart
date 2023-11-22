import 'package:flutter/material.dart';

import '../../../data/utils/colors.dart';

class ProfileMiddleSection extends StatefulWidget {
  const ProfileMiddleSection({super.key});

  @override
  State<ProfileMiddleSection> createState() => _ProfileMiddleSectionState();
}

class _ProfileMiddleSectionState extends State<ProfileMiddleSection> {
  List icons = [
    'assets/images/profile_images/icons/home_icon.png',
    'assets/images/profile_images/icons/profile_icon.png',
    'assets/images/profile_images/icons/location_icon.png',
    'assets/images/profile_images/icons/language_icon.png',
  ];
  @override
  Widget build(BuildContext context) {
    // Settings and logout section
    return Container(
      margin: EdgeInsets.only(top: 20),
      color: Colors.white,
      child: Center(
        child: Column(
          children: [
            // Order details
            Container(
              height: 80,
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(icons[0]),),
                        borderRadius: BorderRadius.circular(100)
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Order Details', style: TextStyle(color: CustomColors().headingTextColor, fontSize: 18),),
                      // SizedBox(height: 18,),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        color: Colors.grey.withOpacity(0.5),
                        height: 1,
                        width: MediaQuery.of(context).size.width/1.5,
                      )
                    ],
                  )
                ],
              ),
            ),
            // Edit profile
            Container(
              height: 80,
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(icons[1]),),
                        borderRadius: BorderRadius.circular(100)
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Edit Profile', style: TextStyle(fontSize: 18),),
                      // SizedBox(height: 18,),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        color: Colors.grey.withOpacity(0.5),
                        height: 1,
                        width: MediaQuery.of(context).size.width/1.5,
                      )
                    ],
                  )
                ],
              ),
            ),
            // Address
            Container(
              height: 80,
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(icons[2]),),
                        borderRadius: BorderRadius.circular(100)
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Address', style: TextStyle(fontSize: 18),),
                      // SizedBox(height: 18,),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        color: Colors.grey.withOpacity(0.5),
                        height: 1,
                        width: MediaQuery.of(context).size.width/1.5,
                      )
                    ],
                  )
                ],
              ),
            ),
            // Change Language
            Container(
              height: 80,
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(icons[3]),),
                        borderRadius: BorderRadius.circular(100)
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Change Language', style: TextStyle(fontSize: 18),),
                      // SizedBox(height: 18,),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        color: Colors.grey.withOpacity(0.5),
                        height: 1,
                        width: MediaQuery.of(context).size.width/1.5,
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
