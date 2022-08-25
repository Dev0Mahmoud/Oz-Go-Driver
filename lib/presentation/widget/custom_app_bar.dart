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
  final bool isSearch ;


  const CustomAppBar({
    Key? key,
    required this.title,
    this.isShortArrow = true,
    this.trailing,
    this.bottomTitleWidget,
    required this.textAlign,
    required this.height,
    this.isSearch = false ,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: EdgeInsetsDirectional.only(top: 25.h,end: 20.w),
      decoration: BoxDecoration(
        color: AppColor.buttonColor,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center ,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,

            children: [
              isShortArrow
                  ? IconButton(
                padding: EdgeInsets.zero,
                      icon: SvgPicture.asset(
                        'assets/icon/back_arrow.svg',

                        color: AppColor.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    )
                  : IconButton(
                padding: EdgeInsets.zero,
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
          if(isSearch == true)
            Padding(
            padding: EdgeInsetsDirectional.only(top: 20.h,start: 20.w,),
            child: bottomTitleWidget,
          ),
        ],
      ),
    );
  }
}
