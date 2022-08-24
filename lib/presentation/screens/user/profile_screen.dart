import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oz_go_driver/constants/assets_manager.dart';
import 'package:oz_go_driver/presentation/styles/colors.dart';
import 'package:oz_go_driver/presentation/widget/circle_avatar.dart';
import 'package:oz_go_driver/presentation/widget/custom_app_bar.dart';
import 'package:oz_go_driver/presentation/widget/default_form_field.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);
  final TextEditingController _nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                CustomAppBar(
                    title: 'Profile',
                    textAlign: TextAlign.start,
                    height: 200.h),
                Positioned(
                    top: 100.h,
                    left: 120.w,
                    child: DefaultCircleAvatar(
                        imageName: AssetsManager.person, radius: 70.r)),
                Padding(
                  padding: EdgeInsets.only(top: 300.h, left: 10.w),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 350.w,
                        child: DefaultFormField(
                            controller: _nameController,
                            keyboard: TextInputType.name,
                            fillColor: Color.fromARGB(255, 194, 194, 194)
                                .withOpacity(0.2),
                            borderColor: Colors.transparent,
                            hintText: 'Full Name'),
                      ),
                      SizedBox(height: 20.h),
                      SizedBox(
                        width: 350.w,
                        height: 40.h,
                        child: DefaultFormField(
                            fillColor: Color.fromARGB(255, 194, 194, 194)
                                .withOpacity(0.2),
                            borderColor: Colors.transparent,
                            controller: _nameController,
                            keyboard: TextInputType.name,
                            hintText: 'NickName'),
                      ),
                      SizedBox(height: 20.h),
                      SizedBox(
                        width: 350.w,
                        height: 40.h,
                        child: DefaultFormField(
                            fillColor: Color.fromARGB(255, 194, 194, 194)
                                .withOpacity(0.2),
                            borderColor: Colors.transparent,
                            controller: _nameController,
                            keyboard: TextInputType.name,
                            suffixIcon: Icon(Icons.date_range_outlined),
                            hintText: 'Date of Birth'),
                      ),
                      SizedBox(height: 20.h),
                      SizedBox(
                        width: 350.w,
                        height: 40.h,
                        child: DefaultFormField(
                            fillColor: Color.fromARGB(255, 194, 194, 194)
                                .withOpacity(0.2),
                            borderColor: Colors.transparent,
                            controller: _nameController,
                            keyboard: TextInputType.name,
                            suffixIcon: Icon(Icons.email_outlined),
                            hintText: 'Email'),
                      ),
                      SizedBox(height: 20.h),
                      SizedBox(
                        width: 350.w,
                        height: 40.h,
                        child: DefaultFormField(
                            fillColor: Color.fromARGB(255, 194, 194, 194)
                                .withOpacity(0.2),
                            borderColor: Colors.transparent,
                            controller: _nameController,
                            keyboard: TextInputType.name,
                            prefixIcon: Icon(Icons.phone_android_outlined),
                            hintText: 'Phone'),
                      ),
                      SizedBox(height: 20.h),
                      SizedBox(
                        width: 350.w,
                        height: 40.h,
                        child: DefaultFormField(
                            fillColor: Color.fromARGB(255, 194, 194, 194)
                                .withOpacity(0.2),
                            borderColor: Colors.transparent,
                            controller: _nameController,
                            keyboard: TextInputType.name,
                            hintText: 'Gender'),
                      ),
                      SizedBox(height: 20.h),
                      SizedBox(
                        width: 350.w,
                        height: 40.h,
                        child: DefaultFormField(
                            fillColor: Color.fromARGB(255, 194, 194, 194)
                                .withOpacity(0.2),
                            borderColor: Colors.transparent,
                            controller: _nameController,
                            keyboard: TextInputType.name,
                            hintText: 'Car Checking'),
                      ),
                      SizedBox(height: 20.h),
                      SizedBox(
                        width: 350.w,
                        height: 40.h,
                        child: DefaultFormField(
                            fillColor: Color.fromARGB(255, 194, 194, 194)
                                .withOpacity(0.2),
                            borderColor: Colors.transparent,
                            controller: _nameController,
                            keyboard: TextInputType.name,
                            hintText: 'Car License'),
                      ),
                      SizedBox(height: 20.h),
                      SizedBox(
                        width: 350.w,
                        height: 40.h,
                        child: DefaultFormField(
                            fillColor: Color.fromARGB(255, 194, 194, 194)
                                .withOpacity(0.2),
                            borderColor: Colors.transparent,
                            controller: _nameController,
                            keyboard: TextInputType.name,
                            hintText: 'Driver license'),
                      ),
                      SizedBox(height: 20.h),
                      SizedBox(
                        width: 350.w,
                        height: 40.h,
                        child: DefaultFormField(
                            fillColor: Color.fromARGB(255, 194, 194, 194)
                                .withOpacity(0.2),
                            borderColor: Colors.transparent,
                            controller: _nameController,
                            keyboard: TextInputType.name,
                            hintText: 'Professional license'),
                      ),
                      SizedBox(height: 20.h),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
