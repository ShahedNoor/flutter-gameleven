import 'package:flutter/material.dart';
import 'package:gameleven/src/data/utils/colors.dart';
import 'package:gameleven/src/modules/skip/skip_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String gamelevenIcon = 'assets/images/gameleven_icons/gameleven_icon.png';
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => SkipScreen()));
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.white.withOpacity(0.3), CustomColors().headingTextColor.withOpacity(0.3)], // Define your gradient colors
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(gamelevenIcon)
            ],
          ),
        ),
      ),
    );
  }
}
