import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oz_go_driver/presentation/view/sign_in_option_button_view.dart';
import 'package:oz_go_driver/presentation/view/sign_in_view.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(

          child: Column(
            children: [
              Stack(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: double.infinity,
                      height: 220.h,
                      child: SvgPicture.asset(
                        'assets/background/background.svg',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 124.h),
                    child: Align(
                      alignment: Alignment(0, -0.5),
                      child: Container(
                        width: 350.w,
                        height: 420.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: SignInView(),
                      ),
                    ),
                  ),

                ],
              ),
              SizedBox(height: 46.h,),
              SignInOptionButtonView()

            ],
          ),
        ),
      ),
    );
  }
}
