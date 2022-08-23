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
import 'package:oz_go_driver/presentation/widget/switch_button.dart';

class TripStartScreen extends StatelessWidget {
  const TripStartScreen({Key? key}) : super(key: key);

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
              Padding(
                padding: EdgeInsets.symmetric(vertical: 40.h, horizontal: 10.w),
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
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w),
                  child: StartTripView(),
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
