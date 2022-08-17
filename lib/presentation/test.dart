import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oz_go_driver/presentation/view/customer_driver_header_view.dart';
import 'package:oz_go_driver/presentation/widget/circle_prgress_componanet.dart';
import 'package:oz_go_driver/presentation/widget/switch_button.dart';

import 'view/trip_details.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 40.h),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),

          child: Column(
            children: [
              TripDetailsView(),
            ],
          ),
        ),
      ),
    );
  }
}
