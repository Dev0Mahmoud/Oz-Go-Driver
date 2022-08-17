import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oz_go_driver/presentation/styles/colors.dart';

class RideHistory extends StatelessWidget {
  const RideHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 10,
        right: 10,
        left: 10,
      ),
      width: 345.w,
      height: 150.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.5),
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 3.0,
          ),
        ],
      ),
      child: Column(
        children: [
          /// address
          Expanded(
              flex: 3,
              child: Row(
                children: [
                  Column(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Icon(
                            Icons.circle_outlined,
                            size: 25,
                            color: AppColor.buttonColor,
                          ),
                          Icon(
                            Icons.circle,
                            size: 13,
                            color: AppColor.buttonColor,
                          )
                        ],
                      ),
                      CustomPaint(
                          size: Size(1.w, 35.h),
                          painter: DashedLineVerticalPainter()),
                      RadiantGradientMask(
                        child: Icon(
                          Icons.location_pin,
                          size: 25,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '7958 Swift Village',
                          style: TextStyle(
                              fontSize: 17.sp,
                              color: AppColor.rideHistoryFontColor),
                        ),
                        Container(
                          height: 35.h,
                        ),
                        Text('105 William St, Sydney',
                            style: TextStyle(
                                fontSize: 17.sp,
                                color: AppColor.rideHistoryFontColor)),
                      ],
                    ),
                  ),
                ],
              )),

          /// divider
          Container(
            height: 1,
            color: Colors.black12,
          ),

          Expanded(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// money text 75.00
              Row(
                children: [
                  Icon(
                    Icons.monetization_on,
                    color: AppColor.grey,
                  ),
                  Text(
                    ' \$75.00',
                    style: TextStyle(
                        fontSize: 17.sp,
                        color: AppColor.rideHistoryFontColor,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),

              /// [ track , completed , cancelled ]
              Row(
                children: [
                  TextButton(

                      /// routing
                      onPressed: () {},
                      child: Text(
                        'Track',
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 15.sp,
                            color: AppColor.trackFontColor),
                      )),
                  Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: AppColor.grey.withOpacity(.8),
                    size: 20,
                  )
                ],
              ),
            ],
          )),
        ],
      ),
    );
  }
}

/// for gradient of location icon
class RadiantGradientMask extends StatelessWidget {
  RadiantGradientMask({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => RadialGradient(
        center: Alignment.center,
        radius: 0.5,
        colors: [AppColor.locationRedColor2, AppColor.locationRedColor1],
        tileMode: TileMode.mirror,
      ).createShader(bounds),
      child: child,
    );
  }
}

/// dashed line between icons
class DashedLineVerticalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double dashHeight = 5, dashSpace = 3, startY = 0;
    final paint = Paint()
      ..color = Colors.grey
      ..strokeWidth = 1;
    while (startY < size.height) {
      canvas.drawLine(Offset(0, startY), Offset(0, startY + dashHeight), paint);
      startY += dashHeight + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
