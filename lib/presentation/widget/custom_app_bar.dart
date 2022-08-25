import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:oz_go_driver/presentation/styles/colors.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final bool isShortArrow;
  final Widget? trailing;
  final TextAlign textAlign;
  final double height;
  final Widget? bottomTitleWidget;


  const CustomAppBar({
    Key? key,
    required this.title,
    this.isShortArrow = true,
    this.trailing,
    this.bottomTitleWidget,
    required this.textAlign,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: EdgeInsets.symmetric(
        horizontal: 10.w,
      ),
      decoration: BoxDecoration(
        color: AppColor.buttonColor,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              isShortArrow
                  ? IconButton(
                      icon: SvgPicture.asset(
                        'assets/icon/back_arrow.svg',
                        color: AppColor.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    )
                  : IconButton(
                      icon: SvgPicture.asset(
                        'assets/icon/long_back_arrow.svg',
                        color: AppColor.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
              Expanded(
                child: Text(
                  title,
                  textAlign: textAlign,
                  style: TextStyle(
                      color: AppColor.white,
                      fontSize: 25.sp,
                      fontFamily: 'Mont',
                      fontWeight: FontWeight.w700),
                ),
              ),

              trailing ?? Container(),
            ],
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(top: 20),
            child: bottomTitleWidget,
          ),
        ],
      ),
    );
  }
}
