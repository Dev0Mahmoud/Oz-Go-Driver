import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oz_go_driver/constants/assets_manager.dart';
import 'package:oz_go_driver/presentation/styles/colors.dart';
import 'package:oz_go_driver/presentation/widget/circle_avatar.dart';

import '../../router/app_router_names.dart';
import '../../widget/custom_app_bar.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(
              title: 'Settings',
              textAlign: TextAlign.start,
              height: 145.h,
            ),
            SizedBox(
              height: 20.h,
            ),

            /// profile container
            Container(
              padding: EdgeInsets.only(left: 20.w, top: 10.h, bottom: 10.h),
              height: 90.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(.5),
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 3.0,
                  ),
                ],
              ),
              child: Row(
                children: [
                  DefaultCircleAvatar(
                    imageName: AssetsManager.person,
                    radius: 30,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    'Beshoy Reda',
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Mont'),
                  ),
                  Spacer(),
                  IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, AppRouterNames.rProfileRoute);
                      },
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: AppColor.grey,
                        size: 15,
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),

            /// notification , security , language
            Container(
              padding: EdgeInsets.only(left: 10.w, top: 10.h, bottom: 10.h),
              height: 135.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(.5),
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 3.0,
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Notification',
                          style: TextStyle(fontFamily: 'SF', fontSize: 17.sp),
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.pushNamed(context, AppRouterNames.rNotificationSwitchRoute);
                            },
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              color: AppColor.grey,
                              size: 15,
                            ))
                      ],
                    ),
                  ),
                  Divider(),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Security',
                          style: TextStyle(fontFamily: 'SF', fontSize: 17.sp),
                        ),
                        IconButton(
                            onPressed: () {
                              /// routing
                            },
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              color: AppColor.grey,
                              size: 15,
                            ))
                      ],
                    ),
                  ),
                  Divider(),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Language',
                          style: TextStyle(fontFamily: 'SF', fontSize: 17.sp),
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.pushNamed(context, AppRouterNames.rLanguageRoute);
                            },
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              color: AppColor.grey,
                              size: 15,
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60.h,
            ),

            /// terms , contact us
            Container(
              padding: EdgeInsets.only(left: 10.w, top: 10.h, bottom: 10.h),
              height: 90.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(.5),
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 3.0,
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Terms',
                          style: TextStyle(fontFamily: 'SF', fontSize: 17.sp),
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.pushNamed(context, AppRouterNames.rTermsRoute);
                            },
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              color: AppColor.grey,
                              size: 15,
                            ))
                      ],
                    ),
                  ),
                  Divider(),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Contact Us',
                          style: TextStyle(fontFamily: 'SF', fontSize: 17.sp),
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.pushNamed(context, AppRouterNames.rContactUsRoute);
                            },
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              color: AppColor.grey,
                              size: 15,
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),

            /// logout
            InkWell(
              onTap: () {
                Navigator.pushReplacementNamed(context, AppRouterNames.rSignInRoute);
              },
              child: Container(
                padding: EdgeInsets.only(left: 10.w, top: 10.h, bottom: 10.h),
                height: 45.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.5),
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 3.0,
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    'Log out',
                    style: TextStyle(
                        fontFamily: 'SF',
                        fontSize: 17.sp,
                        color: Color(0xFFC8C7CC)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
