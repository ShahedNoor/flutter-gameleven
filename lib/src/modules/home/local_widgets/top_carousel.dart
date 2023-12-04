import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../controllers/home_controller.dart';
import '../../../data/utils/colors.dart';

class TopCarousel extends StatefulWidget {
  const TopCarousel({super.key});

  @override
  State<TopCarousel> createState() => _TopCarouselState();
}

class _TopCarouselState extends State<TopCarousel> {
  final _carouselData = HomeController().topCarouselData;
  PageController _controller = PageController();
  Timer? _timer;

  void initState() {
    super.initState();

    _timer = Timer.periodic(
      Duration(seconds: 3),
          (timer) {
        if (_controller.page == _carouselData.length - 1) {
          _controller.jumpToPage(0);
        } else {
          _controller.nextPage(
            duration: Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        }
      },
    );
  }

  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final carouselData = Provider.of<HomeController>(context).topCarouselData;
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(colors: [
            CustomColors().containerColor,
            CustomColors().containerColor.withOpacity(0.8)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: Stack(
          children: [
            PageView.builder(
              itemCount: carouselData.length,
              controller: _controller,
              itemBuilder: (context, index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 0, 4),
                            child: Text(
                              carouselData[index]['title_01'],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 0, 4),
                            child: Text(
                              carouselData[index]['title_02'],
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 0, 4),
                            child: Text(
                              carouselData[index]['subtitle'],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                carouselData[index]['button_text'],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                      child: Container(
                        margin: EdgeInsets.only(right: 20),
                        height: 130,
                        width: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage(
                                HomeController().topCarouselData[0]['image']),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
            Container(
              alignment: Alignment(0, 0.80),
              child: SmoothPageIndicator(
                controller: _controller,
                count: carouselData.length,
                effect: SlideEffect(
                  dotColor: CustomColors().dotColor,
                  activeDotColor: CustomColors().headingTextColor,
                  dotHeight: 8,
                  dotWidth: 8,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
