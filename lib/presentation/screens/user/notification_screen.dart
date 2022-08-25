import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oz_go_driver/presentation/styles/colors.dart';
import 'package:oz_go_driver/presentation/widget/notification_componant.dart';

import '../../widget/custom_app_bar.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(
              title: 'Notifications',
              textAlign: TextAlign.start,
              height: 150.h,
              trailing: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColor.black.withOpacity(.1)),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.delete,
                      color: AppColor.white,
                    )),
              ),
            ),
            Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return Container(
                        height: 90.h,
                        child: NotificationComponent(
                          onTap: () {},
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => Divider(),
                    itemCount: 8))
          ],
        ),
      ),
    );
  }
}
