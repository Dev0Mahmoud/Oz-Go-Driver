import 'package:flutter/material.dart';
import 'package:oz_go_driver/presentation/widget/circle_prgress_componanet.dart';
import 'package:oz_go_driver/presentation/widget/notification_componant.dart';
import 'package:oz_go_driver/presentation/widget/switch_button.dart';
import 'package:oz_go_driver/presentation/widget/total_price.dart';
import 'package:oz_go_driver/presentation/widget/trip_date_component.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: CircleProgressComponent(),
    );
  }
}
