import 'dart:async';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class TopCarousel extends StatefulWidget {
  final image;
  TopCarousel({super.key, required this.image});

  @override
  State<TopCarousel> createState() => _TopCarouselState();
}

class _TopCarouselState extends State<TopCarousel> {
  PageController _controller = PageController();
  Timer? _timer;

  void initState() {
    super.initState();
    _timer = Timer.periodic(
      Duration(seconds: 5),
          (timer) {
        if (_controller.page == 3 - 1) {
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

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2), // Shadow color
            offset: Offset(0, 5), // Horizontal offset
            blurRadius: 5, // Spread of the shadow
          ),
        ],
      ),
      child: Stack(
        children: [
          PageView.builder(
              controller: _controller,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Image.asset(widget.image),
                  ),
                );
              }),
          Container(
            alignment: Alignment(0, 0.80),
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: SlideEffect(
                dotColor: Colors.grey,
                activeDotColor: Colors.red,
                dotHeight: 8,
                dotWidth: 8,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
