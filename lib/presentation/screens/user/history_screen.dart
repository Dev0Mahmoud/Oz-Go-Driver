import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oz_go_driver/presentation/view/ride_history.dart';
import 'package:oz_go_driver/presentation/widget/date_picker.dart';
import '../../styles/colors.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: CustomAppGradient.primaryGradient,
                    ),
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: Container(),
                  flex: 2,
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 90.h),
              child: Column(
                children: [
                  /// app bar
                  Row(
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.arrow_back_ios_new,
                                color: AppColor.white,
                              )),
                          SizedBox(
                            width: 20.w,
                          ),
                          Text(
                            'History',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 25.sp,
                                color: AppColor.white),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20.w),
                        child: DatePickerComponent(),
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        RideHistory(tripStatusText: 'Track'),
                        RideHistory(
                          tripStatusText: 'Completed',
                        ),
                        RideHistory(tripStatusText: 'Cancelled'),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomAppGradient {
  static LinearGradient primaryGradient = LinearGradient(
    colors: [Color.fromRGBO(0, 194, 255, 0.49), Color(0xFF2587A5)],
    stops: [0.0, 1.0],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
