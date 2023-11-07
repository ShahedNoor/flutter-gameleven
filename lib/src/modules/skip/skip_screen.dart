import 'package:flutter/material.dart';
import 'package:gameleven/src/data/global_widgets/theme_data.dart';
import 'package:gameleven/src/modules/home/home_screen.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../controllers/skip_screen_controller.dart';
import '../../data/utils/colors.dart';

class SkipScreen extends StatefulWidget {
  const SkipScreen({super.key});

  @override
  State<SkipScreen> createState() => _SkipScreenState();
}

class _SkipScreenState extends State<SkipScreen> {
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    final skipScreenData = Provider.of<SkipScreenController>(context).skipScreenController;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomTheme().themeData,
      home: Scaffold(
        body: Stack(
          children: [
            PageView.builder(
              controller: _controller,
              itemCount: skipScreenData.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 2,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(skipScreenData[index]['image']),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 2,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              skipScreenData[index]['title'],
                              style: TextStyle(
                                color: CustomColors().headingTextColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(50, 20, 50, 16),
                              child: Text(
                                skipScreenData[index]['subtitle'],
                                style: TextStyle(
                                  color: CustomColors().paragraphTextColor,
                                  fontSize: 14,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
            Container(
              alignment: Alignment(0, 0.80),
              child: SmoothPageIndicator(controller: _controller, count: 3, effect: SlideEffect(dotColor: CustomColors().dotColor, activeDotColor: CustomColors().headingTextColor),),
            ),
            Container(
              alignment: Alignment(0.85, 0.92),
              child: TextButton(
                onPressed: () {
                  final currentPage = _controller.page;
                  if (currentPage != null &&
                      currentPage < skipScreenData.length - 1) {
                    _controller.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeIn);
                  } else {
                    // Redirect to the new screen
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  }
                },
                child: Text(
                  'Next'.toUpperCase(),
                  style: TextStyle(
                      color: CustomColors().paragraphTextColor, fontSize: 17),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
