import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oz_go_driver/presentation/router/app_router_names.dart';
import 'package:oz_go_driver/presentation/styles/colors.dart';
import 'package:oz_go_driver/presentation/view/otp.dart';
import 'package:oz_go_driver/presentation/widget/default_button.dart';

class PhoneVerificationScreen extends StatefulWidget {
  PhoneVerificationScreen({Key? key}) : super(key: key);

  @override
  State<PhoneVerificationScreen> createState() =>
      _PhoneVerificationScreenState();
}

class _PhoneVerificationScreenState extends State<PhoneVerificationScreen> {
  String hintText1 = '*';
  String hintText2 = '*';
  String hintText3 = '*';
  String hintText4 = '*';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          /// app bar
          Container(
            padding: EdgeInsets.only(top: 50.h, left: 10.w),
            height: 195.h,
            decoration: BoxDecoration(gradient: AppGradient.primaryGradient),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: AppColor.white,
                    )),
                SizedBox(
                  width: 10.w,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Phone Verification',
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          color: AppColor.white,
                          fontSize: 25.sp,
                          fontFamily: 'Mont'),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      'Enter your OTP code here',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: AppColor.white,
                          fontSize: 17.sp,
                          fontFamily: 'Mont'),
                    ),
                  ],
                )
              ],
            ),
          ),

          /// OTP
          Form(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 40.h),
            child: Otp(),
          )),
          SizedBox(
            height: 50.h,
          ),
          DefaultButton(
              label: 'Verify Now', onPressed: () {
                Navigator.pushReplacementNamed(context, AppRouterNames.rTripRequestRoute);
          }, height: 45.h, width: 300.w)
        ],
      ),
    );
  }
}
