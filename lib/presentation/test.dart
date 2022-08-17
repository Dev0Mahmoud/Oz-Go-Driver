import 'package:flutter/material.dart';
import 'package:oz_go_driver/presentation/view/ride_history.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oz_go_driver/presentation/widget/custom_app_bar.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: RideHistory()),
    );
  }
}
