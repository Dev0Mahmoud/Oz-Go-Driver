import 'package:flutter/material.dart';
import 'package:oz_go_driver/presentation/screens/user/history_screen.dart';
import 'package:oz_go_driver/presentation/screens/user/rating_screen.dart';
import 'package:oz_go_driver/presentation/styles/colors.dart';
import 'package:oz_go_driver/presentation/view/test.dart';
import 'package:oz_go_driver/presentation/widget/default_indicator.dart';
import 'package:oz_go_driver/presentation/widget/default_phone_number_form_field.dart';
import 'package:oz_go_driver/presentation/widget/regular_text.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  var controller = PageController();
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {

    return contact_screen(title: 'contacts',);

  }
}
