import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oz_go_driver/presentation/styles/colors.dart';

class DrawerButton extends StatelessWidget {
  final String iconPath;
  final String title;
  final VoidCallback onTap;

  const DrawerButton({
    Key? key,
    required this.iconPath,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        iconPath,
        width: 25.w,
        color: AppColor.drawerIcon,
      ),
      title: Text(
        title,
        style: TextStyle(color: AppColor.drawerIcon, fontSize: 16.sp),
      ),
      onTap: onTap
    );
  }
}
