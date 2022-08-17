import 'package:flutter/material.dart';
import 'package:oz_go_driver/constants/assets_manager.dart';

class DefaultCircleAvatar extends StatelessWidget {
  DefaultCircleAvatar({Key? key, required this.imageName, required this.radius})
      : super(key: key);

  String imageName;
  double? radius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: AssetImage(imageName),
    );
  }
}
