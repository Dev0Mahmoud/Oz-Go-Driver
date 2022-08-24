import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oz_go_driver/presentation/widget/sign_in_option_button.dart';

class SignInOptionButtonView extends StatelessWidget {
  const SignInOptionButtonView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SignInOptionButton(
          colorIcon: Colors.white,
          colorLabel: Colors.white,
          title: 'Connect with Facebook',
          primaryColor: Colors.blue,
          onTap: () {},
          icon: Icon(
            Icons.facebook,
            color: Colors.white,
            size: 25.r,
          ),
        ),
        SizedBox(height: 15.h),
        SignInOptionButton(
          colorIcon: Colors.black,
          colorLabel: Colors.black,
          title: 'Connect with Google',
          onTap: () {},
          primaryColor: Colors.white,
          icon: Icon(
            Icons.hide_image,
            color: Colors.black,
            size: 25.r,
          ),
          colorOutlineBorder: Colors.black,
        ),
        SizedBox(height: 15.h),
        SignInOptionButton(
          colorIcon: Colors.white,
          colorLabel: Colors.white,
          title: 'Connect with Apple',
          onTap: () {},
          primaryColor: Colors.black,
          icon: Icon(
            Icons.apple,
            color: Colors.white,
            size: 25.r,
          ),
          colorOutlineBorder: Colors.black,
        ),
        SizedBox(height: 15.h),
      ],
    );
  }
}
