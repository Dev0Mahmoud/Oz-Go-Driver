import 'package:flutter/cupertino.dart';

import '../presentation/widget/regular_text.dart';

Widget settings (BuildContext context , {String? name , String? number}) => Column(
  children: [
    RegularText(text: name!,),
    RegularText(text: number!,),
  ],
);
