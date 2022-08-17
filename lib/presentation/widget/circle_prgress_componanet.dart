import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oz_go_driver/presentation/styles/colors.dart';
import 'package:oz_go_driver/presentation/widget/medium_text.dart';
import 'package:oz_go_driver/presentation/widget/regular_text.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CircleProgressComponent extends StatelessWidget {
  const CircleProgressComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularPercentIndicator(radius: 68.r,
        animation: true,
        animationDuration: 1000,
        lineWidth: 14.w,
        percent: .55,
        center: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            MediumText( text: '2525',),
            SizedBox(
              height: 9.h,
            ),
            RegularText(text: 'Total Trips')
          ],
        ),

        circularStrokeCap: CircularStrokeCap.butt,
        backgroundColor: AppColor.offWhite,
        progressColor: AppColor.blue,),
    ) ;
  }
}
