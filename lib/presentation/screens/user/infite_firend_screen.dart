import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oz_go_driver/presentation/router/app_router_names.dart';
import 'package:oz_go_driver/presentation/styles/colors.dart';
import 'package:oz_go_driver/presentation/widget/custom_app_bar.dart';
import 'package:oz_go_driver/presentation/widget/default_button.dart';
import 'package:oz_go_driver/presentation/widget/default_form_field.dart';
import 'package:oz_go_driver/presentation/widget/headline_text.dart';
import 'package:oz_go_driver/presentation/widget/medium_text.dart';
import 'package:oz_go_driver/presentation/widget/regular_text.dart';

class InviteFriendScreen extends StatelessWidget {
  InviteFriendScreen({Key? key}) : super(key: key);
  var couponsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return
        Scaffold(
          backgroundColor: AppColor.buttonColor,
          body: SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 35.h,
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: AppColor.white,
                            ),
                          ),
                          Spacer(),
                          MediumText(
                            text: 'Invite Friends',
                            color: AppColor.white,
                          ),
                          Spacer(
                            flex: 2,
                          ),
                          // SizedBox(
                          //   width: 50.w,
                          // )
                        ],
                      ),
                      SizedBox(
                        height: 320.h,
                      ),
                      HeadLineText(
                        text: 'Invite Friends',
                        fontSize: 30.sp,
                        color: AppColor.white,
                      ),
                      HeadLineText(
                        text: 'Get 3 Coupons each!',
                        fontSize: 30.sp,
                        color: AppColor.white,
                      ),
                      SizedBox(
                        height: 7.h,
                      ),
                      RegularText(
                        text:
                            'When your friend Sign up with your referral code, you\'ll both get 3.0 coupons',
                        color: AppColor.white,
                        maxLines: 3,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Expanded(
                        child: Container(
                          color: AppColor.white,
                          width: double.infinity,
                          child: Padding(
                            padding: EdgeInsets.all(25.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                MediumText(text: 'Share Your Invite Code'),
                                // SizedBox(
                                //   height: 20.h,
                                // ),
                                DefaultFormField(
                                  controller: couponsController,
                                  keyboard: TextInputType.text,
                                  fillColor: AppColor.containerBG,
                                  borderColor: AppColor.containerBG,
                                  focusedBorderColor: AppColor.containerBG,
                                  suffixIcon:  Icon(Icons.file_upload_outlined),
                                  hintText: 'Y045KG',
                                ),
                                // Spacer(),
                                Center(
                                    child: DefaultButton(
                                  label: 'Invite Friend',
                                  onPressed: () {
                                    Navigator.pushNamed(context, AppRouterNames.rContactsRoute);
                                  },
                                  height: 45.h,
                                  width: 335.w,
                                ))
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    left: 0, top: 0, child: Image.asset('assets/images/Oval2.png')),
                Positioned(
                    right: 0, top: 0, child: Image.asset('assets/images/Oval1.png')),
                Positioned(top: 70, child: Image.asset('assets/images/Artwork.png')),
              ],
            ),
          ),
        );
  }
}
