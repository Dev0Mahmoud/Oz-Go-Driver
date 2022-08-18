import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oz_go_driver/presentation/styles/colors.dart';

import '../widget/default_button.dart';

class ContactUsView extends StatelessWidget {
  const ContactUsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        child: Padding(
          padding:  EdgeInsets.all(25.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // todo form field here
              SizedBox(height: 20,),
              // todo form field here
              SizedBox(height: 20,),
              Container(
                height: 250.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: AppColor.containerBG,
                ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.w,vertical: 13.h),
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: TextField(
                        maxLines: 11, //or null
                        decoration: InputDecoration.collapsed(hintText: "What you wanna say ?"),
                      ),
                    ),
                  )
              ),
              Spacer(),
              Center(child: DefaultButton(onPressed: (){},label: 'Send',height: 45.h,width: 244.w,),),
            ],
          ),
        ),
      ),
    );
  }
}