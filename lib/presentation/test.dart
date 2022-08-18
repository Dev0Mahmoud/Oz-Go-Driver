import 'package:flutter/material.dart';
import 'package:oz_go_driver/presentation/screens/user/infite_firend_screen.dart';
import 'package:oz_go_driver/presentation/view/contact_us_view.dart';
import 'package:oz_go_driver/presentation/view/language_view.dart';

import 'package:oz_go_driver/presentation/view/ride_history.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:oz_go_driver/presentation/view/app_drawer.dart';
import 'package:oz_go_driver/presentation/view/satrt_trip_view.dart';
import 'package:oz_go_driver/presentation/view/terms_view.dart';
import 'package:oz_go_driver/presentation/widget/custom_app_bar.dart';


class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  var controller = PageController();

  @override
  Widget build(BuildContext context) {
    return InviteFriendScreen();

  }
}
