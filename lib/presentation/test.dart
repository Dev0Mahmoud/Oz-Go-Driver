import 'package:flutter/material.dart';
import 'package:oz_go_driver/presentation/screens/user/Phone_verification.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return PhoneVerificationScreen();
  }
}
