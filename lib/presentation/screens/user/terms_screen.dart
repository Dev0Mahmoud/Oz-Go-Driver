import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oz_go_driver/presentation/styles/colors.dart';
import 'package:oz_go_driver/presentation/view/terms_view.dart';

import '../../widget/custom_app_bar.dart';

class TermsScreen extends StatelessWidget {
  const TermsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(double.infinity, 150.h),
          child: CustomAppBar(
            title: 'Terms',
            textAlign: TextAlign.center,
            height: 150.h,
          )),
      backgroundColor: AppColor.buttonColor,
      body: Padding(
        padding:  EdgeInsets.all(16.0.r),
        child: Container(
            height: 583,
            child: TermsView()),
      ),
    );
  }
}
