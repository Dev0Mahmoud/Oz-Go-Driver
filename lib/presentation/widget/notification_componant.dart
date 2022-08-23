import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oz_go_driver/presentation/styles/colors.dart';
import 'package:oz_go_driver/presentation/widget/medium_text.dart';
import 'package:oz_go_driver/presentation/widget/regular_text.dart';

class NotificationComponent extends StatelessWidget {
  final VoidCallback onTap;
  const NotificationComponent({Key? key, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 88.h,
        width: double.infinity,
        child: Row(
          children: [
            Expanded(
                child: Container(
                    width: 40.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.withOpacity(.2),
                    ),
                    child: ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return LinearGradient(
                          colors: [
                            AppColor.buttonSecondColor,
                            AppColor.buttonColor,
                          ],
                          stops: [0.0, 1.0],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          tileMode: TileMode.mirror,
                        ).createShader(bounds);
                      },
                      child: Icon(
                        Icons.check_circle,
                        size: 24.r,
                        color: Colors.white,
                      ),
                    ))),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'System',
                    style: TextStyle(
                        fontFamily: 'SF',
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Text(
                    'Your Booking #1234 has been successfully completed',
                    style: TextStyle(
                        fontFamily: 'SF',
                        fontSize: 17.sp,
                        color: AppColor.rideHistoryFontColor),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
