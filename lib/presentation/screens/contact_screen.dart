import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oz_go_driver/business_logic/global_cubit/global_cubit.dart';
import 'package:oz_go_driver/presentation/view/contact_list.dart';
import 'package:oz_go_driver/presentation/widget/custom_app_bar.dart';

import '../styles/colors.dart';
import '../widget/default_form_field.dart';

class ContactScreen extends StatefulWidget {
   ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(

        preferredSize: Size(double.infinity.w, 180.h),
        child: CustomAppBar(
          height: 180.h,
          title: 'Invite Friends',
          textAlign: TextAlign.center,
          isShortArrow: true,
          bottomTitleWidget: DefaultFormField(
            formFieldStyle: TextStyle(color: AppColor.white),
                  controller: controller,
                  keyboard: TextInputType.text,
                  prefixIcon: Icon(
                    Icons.search,
                    color: AppColor.white,
                  ),
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    color: AppColor.white,
                  ),
                  fillColor: Colors.white.withOpacity(0.34),
            borderColor: Colors.white.withOpacity(0.34),
            outFormPadding: EdgeInsetsDirectional.only(bottom: 10),
            radius: 10,

            onChanged: (value){
              setState((){
                controller.text = value;
                print(value);

                GlobalCubit.get(context).ContactSearch(value);
              });

            },
                ),
        ),
      ),
      body: controller.text.isEmpty ? ContactList(list: GlobalCubit.get(context).contacts!,):ContactList(list: GlobalCubit.get(context).contactSearched,),
    );
  }
}
