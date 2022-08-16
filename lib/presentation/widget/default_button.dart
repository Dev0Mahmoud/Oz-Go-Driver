import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
Widget defaultButton(
    {
      required String label,
      required Function onPressed,
      required Color color,
      }) =>
    Container(
      width: 152,
      height: 61,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
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
              style:  TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );