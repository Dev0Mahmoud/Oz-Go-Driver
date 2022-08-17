import 'package:flutter/material.dart';
import 'package:oz_go_driver/presentation/styles/colors.dart';

class DefaultButton extends StatelessWidget {
  DefaultButton(
      {Key? key,
      required this.label,
      required this.onPressed,
      required this.height,
      required this.width,
      this.textStyle})
      : super(key: key);
  TextStyle? textStyle;
  final String label;
  final Function onPressed;
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.0, 0.0),
          end: Alignment.bottomRight,
          colors: [
            AppColor.buttonColor,
            AppColor.buttonSecondColor.withOpacity(.8)
          ],
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: MaterialButton(
        minWidth: 0,
        padding: EdgeInsets.zero,
        onPressed: () {
          onPressed();
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              label,
              style: textStyle,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
