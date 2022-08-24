import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:oz_go_driver/constants/assets_manager.dart';
import 'package:oz_go_driver/presentation/styles/colors.dart';
import 'package:oz_go_driver/presentation/view/review_bottom_sheet.dart';
import 'package:oz_go_driver/presentation/view/satrt_trip_view.dart';
import 'package:oz_go_driver/presentation/view/trip_request_view.dart';
import 'package:oz_go_driver/presentation/widget/circle_avatar.dart';
import 'package:oz_go_driver/presentation/widget/custom_app_bar.dart';
import 'package:oz_go_driver/presentation/widget/default_button.dart';
import 'package:oz_go_driver/presentation/widget/default_form_field.dart';
import 'package:oz_go_driver/presentation/widget/switch_button.dart';

class TripEndScreen extends StatelessWidget {
  TripEndScreen({Key? key}) : super(key: key);
  TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          GoogleMap(
              initialCameraPosition: CameraPosition(
            target: LatLng(31.040949, 31.378469),
            zoom: 15,
          )),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  /// left arrow ( back button )
                  Padding(
                    padding:
                        EdgeInsets.only(top: 40.h, left: 10.w, bottom: 20.h),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: 65.h,
                          width: 65.w,
                          decoration: BoxDecoration(
                              color: AppColor.white, shape: BoxShape.circle),
                          child: Icon(
                            Icons.arrow_back,
                          ),
                        ),
                      ),
                    ),
                  ),

                  /// trip location field
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Container(
                      height: 70.h,
                      width: 400.w,
                      padding:
                          EdgeInsets.only(top: 10.h, bottom: 10.h, right: 20.w),
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        borderRadius: BorderRadius.circular(21.r),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          /// red dot
                          Expanded(
                              child: Container(
                            width: 10.w,
                            height: 10.h,
                            decoration: BoxDecoration(
                                color: AppColor.red, shape: BoxShape.circle),
                          )),

                          /// trip location text form field
                          Expanded(
                              flex: 4,
                              child: Center(
                                child: DefaultFormField(
                                    controller: controller,
                                    hintText: 'Trip Location',
                                    hintStyle: TextStyle(color: AppColor.black),
                                    borderColor: Colors.transparent,
                                    fillColor: AppColor.tripLocation,
                                    keyboard: TextInputType.text),
                              )),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 40.h, horizontal: 10.w),
                  child: DefaultButton(
                    label: 'End',
                    onPressed: () {},
                    height: 55.h,
                    width: 344.w,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
