import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oz_go_driver/presentation/view/customer_driver_header_view.dart';
import 'package:oz_go_driver/presentation/widget/default_button.dart';
import 'package:oz_go_driver/presentation/widget/from_to_component.dart';

import '../../constants/constants.dart';
import '../router/app_router_names.dart';
import '../styles/colors.dart';
import '../widget/regular_text.dart';

class TripRequestView extends StatelessWidget {
  const TripRequestView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.r)
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Padding(
          padding:  EdgeInsets.all(20.r),
          child: Column(
            children: [
              CustomerDriverHeaderView(image: 'assets/images/moha.jpg'),
              SizedBox(
                height: 23.h,
              ),
              Row(
                children: [
                  FromToComponent(),
                  Expanded(
                    flex: 9,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 36.h,
                          color: AppColor.white,
                          child: Padding(
                            padding:  EdgeInsets.all(10.r),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                RegularText(text: 'Trip Start',),
                                RegularText(text: '09:00 AM',)
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 14.h,
                        ),
                        Container(
                          height: 36.h,
                          color: AppColor.offWhite,
                          child: Padding(
                            padding:  EdgeInsets.all(10.r),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                RegularText(text: 'Trip Location',),
                                RegularText(text: '10:00 PM',)
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 23.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  settings(
                      context,
                      name : 'DISTANCE',
                      number: '5.3 KM'
                  ),

                  settings(
                      context,
                      name : 'Time',
                      number: '30 min'
                  ),

                  settings(
                      context,
                      name : 'Special',
                      number: '\$'
                  )
                ],
              ),
              SizedBox(
                height: 23.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DefaultButton(label: 'Cancel', onPressed: (){}, height: 56.h, width: 144.w,color: AppColor.red,secondColor: AppColor.red,),
                  DefaultButton(label: 'Accept', onPressed: (){
                    Navigator.pushReplacementNamed(context, AppRouterNames.rTripeStartRoute);

                  }, height: 56.h, width: 144.w,),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
