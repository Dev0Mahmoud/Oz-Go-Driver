import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:oz_go_driver/constants/assets_manager.dart';
import 'package:oz_go_driver/presentation/styles/colors.dart';
import 'package:oz_go_driver/presentation/view/app_drawer.dart';
import 'package:oz_go_driver/presentation/view/trip_request_view.dart';
import 'package:oz_go_driver/presentation/widget/circle_avatar.dart';
import 'package:oz_go_driver/presentation/widget/switch_button.dart';

class TripRequestScreen extends StatelessWidget {
   TripRequestScreen({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key

  @override
  Widget build(BuildContext context) {
    return SafeArea(

        child: Scaffold(
          key: _key,
          drawer: AppDrawer(),
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
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: 145.h,
                  width: double.infinity,
                  decoration:
                      BoxDecoration(gradient: AppGradient.primaryGradient),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10.w),
                          child: DefaultCircleAvatar(
                            imageName: AssetsManager.person,
                            radius: 25.r,
                            onTap: (){
                              _key.currentState!.openDrawer();

                            },
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 3,
                          child: Padding(
                            padding: EdgeInsets.only(left: 10.w),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Good Morning 👋 ',
                                  style: TextStyle(
                                      color: AppColor.white,
                                      fontFamily: 'Mont',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 17.sp),
                                ),
                                Text(
                                  'Hossam Saeed',
                                  style: TextStyle(
                                      color: AppColor.white,
                                      fontFamily: 'Mont',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 22.sp),
                                ),
                              ],
                            ),
                          )),
                      Expanded(flex: 2, child: SwitchButton()),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w),
                  child: TripRequestView(),
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}

class AppGradient {
  static LinearGradient primaryGradient = LinearGradient(
    colors: [AppColor.buttonColor, AppColor.buttonSecondColor],
    stops: [0.0, 1.0],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
}
