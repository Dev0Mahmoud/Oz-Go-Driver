import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oz_go_driver/presentation/styles/colors.dart';
import 'package:oz_go_driver/presentation/widget/default_form_field.dart';

import '../widget/default_button.dart';

class ContactUsView extends StatelessWidget {
  ContactUsView({Key? key}) : super(key: key);

  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
      child: Padding(
        padding:  EdgeInsets.all(25.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DefaultFormField(hintText: 'Name',controller: nameController, keyboard: TextInputType.text,fillColor: AppColor.containerBG,borderColor: AppColor.containerBG,focusedBorderColor: AppColor.containerBG,),
            SizedBox(height: 20,),
            DefaultFormField(hintText: 'Email',controller: emailController, keyboard: TextInputType.text,fillColor: AppColor.containerBG,borderColor: AppColor.containerBG,focusedBorderColor: AppColor.containerBG,),              SizedBox(height: 20,),
            Container(
              height: 250.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: AppColor.containerBG,
              ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 13.h),
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: TextField(
                      maxLines: 11, //or null
                      decoration: InputDecoration.collapsed(hintText: "What you wanna say ?",hintStyle: TextStyle(color: AppColor.grey)),
                    ),
                  ),
                )
            ),
            Spacer(),
            Center(child: DefaultButton(onPressed: (){},label: 'Send',height: 45.h,width: 244.w,),),
          ],
        ),
      ),
    );
  }
}