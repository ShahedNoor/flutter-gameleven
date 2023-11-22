import 'package:flutter/material.dart';

class ProfileTopSection extends StatefulWidget {
  const ProfileTopSection({super.key});

  @override
  State<ProfileTopSection> createState() => _ProfileTopSectionState();
}

class _ProfileTopSectionState extends State<ProfileTopSection> {
  String profileImage = 'assets/images/profile_images/profile.png';
  @override
  Widget build(BuildContext context) {
    // Profile image, name & phone number
    return Container(
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
                  borderRadius: BorderRadius.circular(100)),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Jonathan Smith',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '018373636733',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
