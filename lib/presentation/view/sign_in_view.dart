import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oz_go_driver/presentation/router/app_router_names.dart';
import 'package:oz_go_driver/presentation/styles/colors.dart';
import 'package:oz_go_driver/presentation/widget/default_button.dart';
import 'package:oz_go_driver/presentation/widget/default_form_field.dart';
import 'package:oz_go_driver/presentation/widget/default_phone_number_form_field.dart';
import 'package:oz_go_driver/presentation/widget/medium_text.dart';
import 'package:oz_go_driver/presentation/widget/regular_text.dart';

class SignInView extends StatelessWidget {
  SignInView({Key? key}) : super(key: key);

  var phoneController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.r)
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Padding(
        padding:  EdgeInsets.all(21.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MediumText(text: 'Sign In'),
            SizedBox(
              height: 6.h,
            ),
            Container(
              height: 5.h,
              width: 87.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2.5.r),
                color: AppColor.buttonColor
              ),
            ),
            SizedBox(
              height: 58.h,
            ),
            RegularText(text: 'Login With Your Phone Number',color: AppColor.black,),
            SizedBox(
              height: 30.h,
            ),
            DefaultPhoneNumFormField(controller: phoneController, label: '01158822107'),
            SizedBox(
              height: 17.h,
            ),
            DefaultFormField(controller: passwordController, keyboard: TextInputType.text),
            SizedBox(
              height:25.h,
            ),
            DefaultButton(label: 'Next', onPressed: (){
              Navigator.pushReplacementNamed(context, AppRouterNames.rVerificationRoute);
            }, height: 56.h,width: double.infinity,)
          ],
        ),
      ),
    );
  }
}
