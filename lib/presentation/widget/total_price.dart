import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oz_go_driver/presentation/styles/colors.dart';
import 'package:oz_go_driver/presentation/widget/headline_text.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          width: 200.w,
          height: 200.h,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.0, 0.0),
              end: Alignment.bottomCenter,
              colors: [AppColor.blue, AppColor.blue.withOpacity(.5)],
            ),
            borderRadius: BorderRadius.circular(200.r),
          ),
          child: Center(
              child: HeadLineText(
            text: '200.14',
            color: AppColor.white,
            fontSize: 45.sp,
          ))),
    );
  }
}
