import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oz_go_driver/presentation/styles/colors.dart';
import 'package:oz_go_driver/presentation/widget/medium_text.dart';

class DefaultButton extends StatelessWidget {
  DefaultButton(
      {Key? key,
      required this.label,
      required this.onPressed,
      required this.height,
      required this.width,
        this.color = AppColor.buttonColor,
        this.secondColor = AppColor.buttonSecondColor,
      this.textStyle})
      : super(key: key);
  TextStyle? textStyle;
  final String label;
  final Function onPressed;
  final double? width;
  final double? height;
  final Color color;
  final Color secondColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.0, 0.0),
          end: Alignment.bottomRight,
          colors: [
            color,
            secondColor.withOpacity(.8)
          ],
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: MaterialButton(
        minWidth: 0,
        padding: EdgeInsets.zero,
        onPressed: () {
          onPressed();
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            MediumText(
              text: label,
              fontSize: 17.sp,
              color: AppColor.white,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
