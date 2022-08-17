import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oz_go_driver/presentation/styles/colors.dart';
import 'package:oz_go_driver/presentation/widget/headline_text.dart';

class TotalPrice extends StatelessWidget {

  final double width;
  final double height;
  final double fontSize;



  const TotalPrice({Key? key,this.width = 200 ,this.height =200 , this.fontSize = 45}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          width: width.w,
          height: height.h,
          decoration: BoxDecoration(
            color: AppColor.buttonColor,
            borderRadius: BorderRadius.circular(200.r),
          ),
          child: Center(
              child: HeadLineText(
            text: '200.14',
            color: AppColor.white,
            fontSize: fontSize.sp,
          ))),
    );
  }
}
