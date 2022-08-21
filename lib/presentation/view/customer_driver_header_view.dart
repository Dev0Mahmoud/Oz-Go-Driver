import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oz_go_driver/presentation/styles/colors.dart';
import 'package:oz_go_driver/presentation/widget/circle_avatar.dart';
import 'package:oz_go_driver/presentation/widget/medium_text.dart';
import 'package:oz_go_driver/presentation/widget/regular_text.dart';

class CustomerDriverHeaderView extends StatelessWidget {
  final bool isSecondTitle;
  final bool isSuffix;
  final bool isTitle;

  Widget defaultSecondTitle = Row(
    children: [
      Icon(
        Icons.star_rounded,
        color: AppColor.starColor,
      ),
      RegularText(text: '4.2'),
    ],
  );

  final String image;

  final Widget? secondTitle;
  final Widget? title;
  final Widget? suffix;

  CustomerDriverHeaderView(
      {Key? key,
      required this.image,
      this.secondTitle,
      this.suffix,
      this.title,
      this.isSecondTitle = true,
      this.isSuffix = true,
      this.isTitle = true})
      : super(key: key) {}

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          DefaultCircleAvatar(imageName: image, radius: 30.r),
          SizedBox(
            width: 15.w,
          ),
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (isTitle)
                  MediumText(
                    text: 'Hossam Saeed',
                  )
                else
                  title!,
                SizedBox(
                  height: 7.h,
                ),
                if (isSecondTitle) defaultSecondTitle else secondTitle!
              ],
            ),
          ),
          if (isSuffix)
            Expanded(
              child: CircleAvatar(
                radius: 30.r,
                backgroundColor: AppColor.chatColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MediumText(
                      text: '12',
                      color: AppColor.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 15.sp,
                    ),
                    MediumText(
                      text: 'Sec',
                      color: AppColor.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 15.sp,
                    ),
                  ],
                ),
              ),
            )
          else
            suffix!,
        ],
      ),
    );
  }
}
