import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oz_go_driver/presentation/styles/colors.dart';
import 'package:oz_go_driver/presentation/widget/circle_avatar.dart';

import '../widget/drawer_button.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(30.w, 60.h, 0.w, 30.h),
            decoration: BoxDecoration(
              gradient: AppGradient.primaryGradient,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DefaultCircleAvatar(
                    imageName: 'assets/images/moha.jpg', radius: 50.r),
                SizedBox(height: 20.h),
                Text(
                  'Moha',
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: AppColor.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20.h),
                Container(
                  height: 25.h,
                  width: 125.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.r),
                    color: AppColor.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Profit',
                        style: TextStyle(
                          fontSize: 15.sp,
                          color: AppColor.black,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Text(
                        '0.00',
                        style: TextStyle(
                          fontSize: 15.sp,
                          color: AppColor.lightBlue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 16.r,
                        color: AppColor.black,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          DrawerButton(
            appRoute: '/',
            iconPath: 'assets/icon/home.svg',
            title: 'Home',
          ),
          SizedBox(height: 20.h),
          DrawerButton(
            appRoute: '/',
            iconPath: 'assets/icon/wallet.svg',
            title: 'My Wallet',
          ),
          SizedBox(height: 20.h),
          DrawerButton(
            appRoute: '/',
            iconPath: 'assets/icon/history.svg',
            title: 'History',
          ),
          SizedBox(height: 20.h),
          DrawerButton(
            appRoute: '/',
            iconPath: 'assets/icon/notification.svg',
            title: 'Notification',
          ),
          SizedBox(height: 20.h),
          DrawerButton(
            appRoute: '/',
            iconPath: 'assets/icon/invite.svg',
            title: 'Invite Friend',
          ),
          SizedBox(height: 20.h),
          DrawerButton(
            appRoute: '/',
            iconPath: 'assets/icon/settings.svg',
            title: 'Settings',
          ),
          SizedBox(height: 20.h),
          DrawerButton(
            appRoute: '/',
            iconPath: 'assets/icon/logout.svg',
            title: 'Log Out',
          ),
        ],
      ),
    );
  }
}
