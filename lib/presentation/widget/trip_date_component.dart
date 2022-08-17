import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oz_go_driver/presentation/styles/colors.dart';
import 'package:oz_go_driver/presentation/widget/medium_text.dart';
import 'package:oz_go_driver/presentation/widget/regular_text.dart';

class TripDateController extends StatelessWidget {
  const TripDateController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 99.h,
      width: double.infinity,
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MediumText(text: 'Tripe Date'),
          SizedBox(
            height: 22.h,
          ),
          Row(
            children: [
              Icon(Icons.access_time_rounded),
              SizedBox(
                width: 7.w,
              ),
              RegularText(text: 'Day : '),
              RegularText(text: 'Sunday'),
              SizedBox(
                width: 15.w,
              ),
              RegularText(text: 'Date : '),
              RegularText(text: '15/5/2022'),
            ],
          ),
        ],
      ),
    );
  }
}
