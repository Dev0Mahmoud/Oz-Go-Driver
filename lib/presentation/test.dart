import 'package:flutter/material.dart';
import 'package:oz_go_driver/presentation/screens/user/sign_in_screen.dart';

import 'package:oz_go_driver/presentation/view/ride_history.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oz_go_driver/presentation/view/app_drawer.dart';
import 'package:oz_go_driver/presentation/view/otp.dart';
import 'package:oz_go_driver/presentation/view/sign_in_option_button_view.dart';
import 'package:oz_go_driver/presentation/widget/custom_app_bar.dart';
import 'package:oz_go_driver/presentation/screens/user/trip_start_screen.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: SignInScreen()),
        ],
      ),
    );
  }
}
