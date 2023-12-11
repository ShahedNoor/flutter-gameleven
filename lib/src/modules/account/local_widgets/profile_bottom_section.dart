import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gameleven/src/modules/sign_in/sign_in_screen.dart';

import '../../../data/utils/colors.dart';

class ProfileBottomSection extends StatefulWidget {
  const ProfileBottomSection({super.key});

  @override
  State<ProfileBottomSection> createState() => _ProfileBottomSectionState();
}

class _ProfileBottomSectionState extends State<ProfileBottomSection> {
  String logoutIcon = 'assets/images/profile_images/icons/logout_icon.png';
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => SignInScreen()));
        setState(() {
          SystemChrome.setSystemUIOverlayStyle(
            SystemUiOverlayStyle(
              statusBarColor: CustomColors().signInAppBarColor,
            ),
          );
        });
      },
      child: Container(
        height: 80,
        child: Row(
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(logoutIcon),),
                  borderRadius: BorderRadius.circular(100)
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Logout', style: TextStyle(color: CustomColors().headingTextColor, fontSize: 18),),
                // SizedBox(height: 18,),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  color: Colors.grey.withOpacity(0.5),
                  height: 1,
                  width: MediaQuery.of(context).size.width/1.5,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
