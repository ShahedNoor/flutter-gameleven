import 'package:flutter/material.dart';

import '../../../data/utils/colors.dart';

class ApplyVoucher extends StatefulWidget {
  final voucherTitle, voucherDiscount, voucherValidity;
  ApplyVoucher({super.key, required this.voucherTitle, this.voucherDiscount, this.voucherValidity});

  @override
  State<ApplyVoucher> createState() => _ApplyVoucherState();
}

class _ApplyVoucherState extends State<ApplyVoucher> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        gradient: LinearGradient(
          colors: [
            CustomColors().voucherContainerColor,
            CustomColors().promotionMenuColor[0],
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // Shadow color
            offset: Offset(0, 5), // Horizontal offset
            blurRadius: 5, // Spread of the shadow
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(14, 14, 14, 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                    'assets/images/details_screen_images/coupon_icon.png'),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.voucherTitle,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      widget.voucherDiscount,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 40,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white),
                  child: Center(
                    child: Text('Collect'.toUpperCase()),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 15,
            child: Stack(
              children: [
                Positioned(
                  left: -5,
                  child: Container(
                    height: 13,
                    width: 13,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 6),
                  height: 30,
                  width: MediaQuery.of(context).size.width,
                  child: CustomPaint(
                    painter: DashedLinePainter(),
                  ),
                ),
                Positioned(
                  right: -5,
                  child: Container(
                    height: 13,
                    width: 13,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(14, 2, 14, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(''),
                Text(
                  widget.voucherValidity,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DashedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white // Change the color as needed
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2 // Adjust the line thickness
      ..strokeCap = StrokeCap.round;

    final dashWidth = 5; // Adjust the dash width
    final dashSpace = 5; // Adjust the space between dashes

    double startX = 0;
    while (startX < size.width) {
      canvas.drawLine(Offset(startX, 0), Offset(startX + dashWidth, 0), paint);
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
