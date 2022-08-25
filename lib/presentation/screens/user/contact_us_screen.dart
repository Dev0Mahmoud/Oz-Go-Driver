import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oz_go_driver/presentation/styles/colors.dart';
import 'package:oz_go_driver/presentation/view/contact_us_view.dart';

import '../../widget/custom_app_bar.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(double.infinity, 150.h),
          child: CustomAppBar(
            title: 'Contact Us',
            textAlign: TextAlign.center,
            height: 150.h,
          )),
      backgroundColor: AppColor.buttonColor,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding:  EdgeInsets.all(16.0.r),
          child: Container(
              height: 583,
              child: ContactUsView()),
        ),
      ),
    );
  }
}
