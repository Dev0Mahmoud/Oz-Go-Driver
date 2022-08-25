import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../styles/colors.dart';

class SwitchButton extends StatefulWidget {
  const SwitchButton({
    Key? key,
  }) : super(key: key);

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 66.w,
      height: 28.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(60.r),
      ),
      child: CupertinoSwitch(
        value: _isSelected,
        onChanged: (value) {
          setState(() {
            _isSelected = value;
          });
        },
        activeColor: AppColor.green,
        thumbColor: _isSelected ? AppColor.white : AppColor.green,
        trackColor: AppColor.offWhite,
      ),
    );
  }
}
