import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oz_go_driver/presentation/widget/switch_button.dart';

import '../../styles/colors.dart';

class NotificationSwitch extends StatelessWidget {
  NotificationSwitch({Key? key}) : super(key: key);

  final List<String> notificationSwitchingList = [
    'SMS',
    'Email',
    'Push Notification',
    'Location Sharing'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: NotificationCustomAppGradient.primaryGradient,
      ),
      child: (Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            'Notification',
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 17.sp),
          ),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                ///routing
              },
              icon: Icon(Icons.arrow_back_ios)),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 20.w),
            height: 570.h,
            width: 345.w,
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
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  child: ListView.separated(
                      itemBuilder: (context, index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                notificationSwitchingList[index],
                                style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 20.sp),
                              ),
                            ),
                            SwitchButton()
                          ],
                        );
                      },
                      separatorBuilder: (context, index) => Divider(),
                      itemCount: notificationSwitchingList.length),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}

class NotificationCustomAppGradient {
  static LinearGradient primaryGradient = LinearGradient(
    colors: [
      Color(0xFF00C2FF),
      Color(0xFF1C87A9),
    ],
    stops: [0.0, 1.0],
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
  );
}
