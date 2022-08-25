import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oz_go_driver/presentation/view/trip_details.dart';
import 'package:oz_go_driver/presentation/widget/custom_app_bar.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(double.infinity, 150.h),
          child: CustomAppBar(
            title: 'Checkout',
            textAlign: TextAlign.start,
            height: 150.h,

          )),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(20.r),
          child: Column(
            children: [
              TripDetailsView(
                isTripDetails: false,
              )
            ],
          ),
        ),
      ),
    );
  }
}
