import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oz_go_driver/constants/assets_manager.dart';
import 'package:oz_go_driver/presentation/styles/colors.dart';
import 'package:oz_go_driver/presentation/widget/circle_avatar.dart';
import 'package:oz_go_driver/presentation/widget/default_button.dart';
import 'package:oz_go_driver/presentation/widget/default_indicator.dart';

class MyWalletScreen extends StatelessWidget {
  MyWalletScreen({Key? key}) : super(key: key);
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              /// app bar
              Container(
                height: 250.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 10.w,
                ),
                decoration: BoxDecoration(
                  gradient: AppGradient.primaryGradient,
                ),
                child: Column(
                  children: [
                    Spacer(),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              color: AppColor.white,
                            )),
                        SizedBox(
                          width: 20.w,
                        ),
                        Text(
                          'My Wallet',
                          style: TextStyle(
                              color: AppColor.white,
                              fontSize: 25.sp,
                              fontFamily: 'Mont',
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.h),
                      child: DefaultCircleAvatar(
                          imageName: AssetsManager.person, radius: 40.r),
                    ),
                    Text(
                      'Hossam Saeed',
                      style: TextStyle(
                          color: AppColor.white,
                          fontSize: 25.sp,
                          fontFamily: 'Mont',
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 20.h,
                    )
                  ],
                ),
              ),

              /// your wallet balance , 50$ , add coin Button
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  width: 375.w,
                  height: 175.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22),
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
                      Text(
                        'Your Wallet balance',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Mont',
                            fontSize: 20.sp),
                      ),
                      Text(
                        '\$50',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Mont',
                            fontSize: 35.sp),
                      ),
                      DefaultButton(
                          label: 'Add coin',
                          radius: 22,
                          onPressed: () {},
                          height: 40.h,
                          width: 110.w)
                    ],
                  ),
                ),
              ),

              /// credit image
              Container(
                height: 265.h,
                width: 400.w,
                child: PageView.builder(
                    controller: controller,
                    physics: const BouncingScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Image.asset(AssetsManager.credit);
                    }),
              ),

              /// indicator
              DefaultIndicator(controller: controller, length: 3),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 30.h),
                child: DefaultButton(
                    label: 'Add Card',
                    onPressed: () {},
                    height: 45.h,
                    width: 310.w),
              )
            ],
          ),
        ),
      ),
    );
  }
}
