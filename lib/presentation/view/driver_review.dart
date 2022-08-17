import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oz_go_driver/constants/assets_manager.dart';
import '../styles/colors.dart';
import '../widget/circle_avatar.dart';
import '../widget/medium_text.dart';

class DriverReview extends StatelessWidget {
  const DriverReview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      DefaultCircleAvatar(
                          imageName: AssetsManager.person, radius: 30.r),
                    ],
                  ),
                ),
              ),
              Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MediumText(
                            text: 'Hossam Saeed',
                            fontWeight: FontWeight.w600,
                            fontSize: 20.sp,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 10),
                            height: 50.h,
                            width: 100.w,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemCount: 5,
                                itemBuilder: (context, index) {
                                  return Icon(
                                    Icons.star,
                                    color: AppColor.yellow,
                                    size: 15,
                                  );
                                }),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text(
                          'This text is a simple example of improving user experience design and is not of any importance This text is a simple example of improving user experience design and is not of any importance',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColor.driverReviewTextColor),
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ],
    );
  }
}
