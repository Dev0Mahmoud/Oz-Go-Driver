import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oz_go_driver/presentation/widget/custom_app_bar.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomAppBar(
        isShortArrow: true,
        title: 'Test',
        textAlign: TextAlign.center,
        height: 100.h,
      ),
    );
  }
}
