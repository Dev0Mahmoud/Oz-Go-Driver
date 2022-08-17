import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../styles/colors.dart';
import '../view/ride_history.dart';

class FromToComponent extends StatelessWidget {
  const FromToComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
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
          ],
        ));
  }
}
