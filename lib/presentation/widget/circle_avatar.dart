import 'package:flutter/material.dart';

class DefaultCircleAvatar extends StatelessWidget {
  DefaultCircleAvatar({Key? key, required this.imageName, required this.radius,this.onTap})
      : super(key: key);

  VoidCallback? onTap ;
  String imageName;
  double? radius;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ?? (){},
      child: CircleAvatar(
        radius: radius,
        backgroundImage: AssetImage(imageName),
      ),
    );
  }
}
