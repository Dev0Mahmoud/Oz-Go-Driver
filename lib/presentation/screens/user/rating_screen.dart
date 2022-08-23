import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oz_go_driver/presentation/view/driver_review.dart';
import 'package:oz_go_driver/presentation/widget/custom_app_bar.dart';

import '../../styles/colors.dart';
import '../../widget/circle_prgress_componanet.dart';

class RatingScreen extends StatelessWidget {
  const RatingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(
              title: 'Rating',
              textAlign: TextAlign.left,
              height: 145.h,
              isShortArrow: false,
            ),
            SizedBox(
              height: 20.h,
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.r),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(.5),
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 3.0,
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleProgressComponent(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('(3.5)'),
                            Container(
                              padding: EdgeInsets.only(left: 10.w),
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
                            Text('( 112 Users )'),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 2,
                    child: ListView.separated(
                        itemBuilder: (context, index) => DriverReview(),
                        separatorBuilder: (context, index) => Divider(),
                        itemCount: 5),
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
