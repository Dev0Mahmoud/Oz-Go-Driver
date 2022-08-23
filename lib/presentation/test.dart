import 'package:flutter/material.dart';
<<<<<<< HEAD

import 'package:oz_go_driver/presentation/view/ride_history.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oz_go_driver/presentation/view/app_drawer.dart';
import 'package:oz_go_driver/presentation/view/otp.dart';
import 'package:oz_go_driver/presentation/widget/custom_app_bar.dart';
=======
import 'package:oz_go_driver/presentation/screens/user/trip_start_screen.dart';
>>>>>>> 4fb91234d907b88ad5fac7e399efa6af939580e9

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return Scaffold(
<<<<<<< HEAD
      body: CustomAppBar(
        isShortArrow: true,
        title: 'Test',
        textAlign: TextAlign.center,
        height: 100.h,
      ),
=======
      key: scaffoldKey,
      drawer: AppDrawer(),
      body: Center(child: Otp()),
>>>>>>> 5e5c47b84a99028d8a3f619e6585af7dfbfae82b
    );
=======
    return TripStartScreen();
>>>>>>> 4fb91234d907b88ad5fac7e399efa6af939580e9
  }
}
