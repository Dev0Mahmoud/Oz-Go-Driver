import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oz_go_driver/presentation/widget/default_button.dart';
import 'package:oz_go_driver/presentation/widget/drop_down_component.dart';
import 'package:oz_go_driver/presentation/widget/medium_text.dart';

class LanguageView extends StatelessWidget {
  const LanguageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        child: Padding(
          padding:  EdgeInsets.all(25.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MediumText(text: 'Choose Your Language'),
              SizedBox(height: 65.h,),
              Center(child: DropDownComponent()),
              Spacer(),
              Center(child: DefaultButton(onPressed: (){},label: 'Done',height: 45.h,width: 244.w,),),
            ],
          ),
        ),
      ),
    );
  }
}
