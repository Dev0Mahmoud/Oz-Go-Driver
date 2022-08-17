import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oz_go_driver/presentation/styles/colors.dart';
import 'package:oz_go_driver/presentation/widget/medium_text.dart';
import 'package:oz_go_driver/presentation/widget/regular_text.dart';

class NotificationComponent extends StatelessWidget {

  final VoidCallback onTap ;
  const NotificationComponent({Key? key,required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 88.h,
        width: double.infinity,
        child: Row(
          children: [
            Expanded(child: Icon(Icons.check_circle,color: AppColor.blue,size: 24.r,)),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MediumText(text: 'System'),
                  SizedBox(
                    height: 4.h,
                  ),
                  RegularText(text: 'Your Booking #1234 has been successfully completed',maxLines: 1 ,overflow: TextOverflow.ellipsis,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
