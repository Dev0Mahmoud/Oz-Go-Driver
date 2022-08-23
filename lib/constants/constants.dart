import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../presentation/widget/regular_text.dart';

Widget settings(BuildContext context, {String? name, String? number}) => Column(
      children: [
        RegularText(
          text: name!,
          fontFamily: 'Mont',
          fontWeight: FontWeight.w300,
          fontSize: 16.sp,
        ),
        RegularText(
          text: number!,
          fontFamily: 'Mont',
          fontWeight: FontWeight.w400,
          fontSize: 16.sp,
        ),
      ],
    );
