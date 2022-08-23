import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oz_go_driver/presentation/widget/circle_prgress_componanet.dart';
import 'package:oz_go_driver/presentation/widget/regular_text.dart';

import '../styles/colors.dart';

class TotalRatingView extends StatelessWidget {
  const TotalRatingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleProgressComponent(),
          Column(
            children: [
              RegularText(text: '(3.5)'),
              SizedBox(
                height: 5.h,
              ),
              Container(
                  height: 16.h,
                  width: 100.w,
                  child: ListView.separated(scrollDirection: Axis.horizontal,itemBuilder: (context, index) => Icon(Icons.star_rounded,color: AppColor.yellow,), separatorBuilder: (context,index) => SizedBox(width: 0.w,), itemCount: 4)),
              SizedBox(
                height: 13.h,
              ),
              RegularText(text: '( 112 Users )' , color: AppColor.blue,),
            ],
          )
        ],
      );
  }
}
