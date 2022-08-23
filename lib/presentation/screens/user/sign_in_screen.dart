import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 0,
              child: Expanded(
                child: Container(
                  width: double.infinity,
                  height: 220.h,
                  child: SvgPicture.asset(
                    'assets/background/background.svg',
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 125.h,
              left: 15.w,
              right: 15.w,
              bottom: 100.h,
              child: Expanded(
                child: Container(
                  width: 350.w,
                  height: 500.h,
                  color: Color.fromARGB(255, 8, 104, 11),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
