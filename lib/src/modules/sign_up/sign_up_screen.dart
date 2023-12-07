import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gameleven/src/modules/sign_in/sign_in_screen.dart';

import '../../data/utils/colors.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final signInLogo =
      'assets/images/sign_in_and_sign_up_images/sing_in_and_sign_up_logo.png';
  final socialIcons = [
    'assets/images/sign_in_and_sign_up_images/social_icons/facebook.png',
    'assets/images/sign_in_and_sign_up_images/social_icons/google.png',
    'assets/images/sign_in_and_sign_up_images/social_icons/instagram.png',
    'assets/images/sign_in_and_sign_up_images/social_icons/linkedin.png',
  ];
  bool isChecked = false;

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.white;
    }
    return CustomColors().headingTextColor;
  }

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
            },
            icon: Icon(Icons.arrow_back),
          ),
          title: Text('Sign Up'),
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
                      leading: Icon(Icons.person),
                      title: TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Full Name', border: InputBorder.none),
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
                      leading: Icon(Icons.email),
                      title: TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Email', border: InputBorder.none),
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
                  // Password section
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
                  // Forgot your password section
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'I agree to the Privacy Policy and terms & \nConditions of Limarket',
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
                    height: 40,
                  ),
                  // Don't have account section
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already Have An Account ?',
                        style: TextStyle(color: Colors.black.withOpacity(0.8)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SignInScreen()));
                          },
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                                color: CustomColors().headingTextColor),
                          )),
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
