import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gameleven/src/modules/sign_up/sign_up_screen.dart';

import '../../data/utils/colors.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final signInLogo =
      'assets/images/sign_in_and_sign_up_images/sing_in_and_sign_up_logo.png';
  final socialIcons = [
    'assets/images/sign_in_and_sign_up_images/social_icons/facebook.png',
    'assets/images/sign_in_and_sign_up_images/social_icons/google.png',
    'assets/images/sign_in_and_sign_up_images/social_icons/instagram.png',
    'assets/images/sign_in_and_sign_up_images/social_icons/linkedin.png',
  ];

  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: CustomColors().signInAppBarColor,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: CustomColors().signInAppBarColor,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
              setState(() {
                SystemChrome.setSystemUIOverlayStyle(
                  SystemUiOverlayStyle(
                    statusBarColor: CustomColors().backgroundColor,
                  ),
                );
              });
            },
            icon: Icon(Icons.arrow_back),
          ),
          title: Text('Sign In'),
          elevation: 0,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width / 1.2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(signInLogo),
                  SizedBox(
                    height: 40,
                  ),
                  // Phone number section
                  Container(
                    width: MediaQuery.of(context).size.width / 1.2,
                    decoration:
                        BoxDecoration(color: CustomColors().searchBarColor),
                    child: ListTile(
                      leading: Icon(Icons.phone),
                      title: TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Phone Number', border: InputBorder.none),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // Password section
                  Container(
                    width: MediaQuery.of(context).size.width / 1.2,
                    decoration:
                        BoxDecoration(color: CustomColors().searchBarColor),
                    child: ListTile(
                      leading: Icon(Icons.lock),
                      title: TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Password', border: InputBorder.none),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // Forgot your password section
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'Forgot your password?',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // Sign In button
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 1.2,
                      color: CustomColors().headingTextColor,
                      child: Center(
                        child: Text(
                          'Sign In',
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // Divider
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 3.5,
                        height: 1,
                        color: Colors.grey,
                      ),
                      Container(
                        child: Text(
                          'OR',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 3.5,
                        height: 1,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // Social login
                  Container(
                    width: MediaQuery.of(context).size.width / 1.7,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Image.asset(socialIcons[0]),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Image.asset(socialIcons[1]),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Image.asset(socialIcons[2]),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Image.asset(socialIcons[3]),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'By clicking this button, you agree to our privacy Policy',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  // Don't have account section
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don’t Have An Account ?',
                        style: TextStyle(color: Colors.black.withOpacity(0.8)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUpScreen()));
                        },
                        child: Text(
                          'Sign Up',
                          style:
                              TextStyle(color: CustomColors().headingTextColor),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
