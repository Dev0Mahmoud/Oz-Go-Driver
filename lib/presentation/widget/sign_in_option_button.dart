import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInOptionButton extends StatelessWidget {
  final String title;
  final Icon icon;
  final VoidCallback onTap;
  final Color colorLabel;
  final Color colorIcon;
  final Color primaryColor;
  final Color? colorOutlineBorder;

  const SignInOptionButton(
      {Key? key,
      required this.title,
      required this.icon,
      required this.onTap,
      required this.colorLabel,
      required this.primaryColor,
      required this.colorIcon,
      this.colorOutlineBorder = Colors.transparent})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: icon,
      label: Text(title, style: TextStyle(color: colorLabel)),
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        primary: primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.r),
          side: BorderSide(
            color: colorOutlineBorder!,
            width: 1.r,
          ),
        ),
        fixedSize: Size(345.w, 45.h),
        padding: EdgeInsets.symmetric(horizontal: 20.w),
      ),
    );
  }
}
