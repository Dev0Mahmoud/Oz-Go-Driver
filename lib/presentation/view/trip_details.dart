import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oz_go_driver/presentation/styles/colors.dart';
import 'package:oz_go_driver/presentation/view/customer_driver_header_view.dart';
import 'package:oz_go_driver/presentation/widget/default_button.dart';
import 'package:oz_go_driver/presentation/widget/medium_text.dart';
import 'package:oz_go_driver/presentation/widget/regular_text.dart';
import 'package:oz_go_driver/presentation/widget/total_price.dart';
import 'package:oz_go_driver/presentation/widget/trip_date_component.dart';

import '../../constants/constants.dart';

class TripDetailsView extends StatelessWidget {
  const TripDetailsView({Key? key , this.isTripDetails = true}) : super(key: key);
  final bool isTripDetails ;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 25.w ,vertical: 22.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomerDriverHeaderView(image: 'assets/images/moha.jpg',isSuffix: false,suffix: Container(),),
            SizedBox(
              height: 27.h,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 5.r ,
                        backgroundColor: AppColor.blue,
                      ),
                      Container(
                        width: 1.w,
                        height: 37.h,
                        color: Colors.grey,
                      ),
                      CircleAvatar(
                        radius: 5.r ,
                        backgroundColor: AppColor.red,
                      ),
                    ],
                  ),
                ),
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
                )
              ],
            ),
            SizedBox(
              height: 27.h,
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
              height: 40.h,
            ),
            TripDateController(),
            SizedBox(
              height: 25.h,
            ),
            if(isTripDetails)
              Column(
              children: [
                price(context,name: 'Trip Fares',price: 50),
                SizedBox(
                  height: 16.h,
                ),
                price(context,name: 'App Fee',price: 05.00),
                SizedBox(
                  height: 16.h,
                ),
                price(context,name: 'Tax',price: 2.00),
                SizedBox(
                  height: 16.h,
                ),
                price(context,name: 'Tolls',price: 8.00),
                SizedBox(
                  height: 16.h,
                ),
                price(context,name: 'Discount',price: 25),
                SizedBox(
                  height: 16.h,
                ),
                price(context,name: 'Topup',price: 20),
                SizedBox(
                  height: 32.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MediumText(text: 'Total Price',color:AppColor.blue ,),
                    TotalPrice(width: 70,height: 70,fontSize: 18,),
                  ],
                ),
              ],
            )
            else
              Column(
                children: [
                  MediumText(text: 'Total Price'),
                  SizedBox(
                    height: 32.h,
                  ),
                  TotalPrice(),
                  SizedBox(
                    height: 32.h,
                  ),
                  DefaultButton(label: 'paid', onPressed: (){}, height: 56.h, width: double.infinity)
                ],
              ),
          ],
        ),
      ),
    );
  }



  Widget price (BuildContext context , {String? name , double? price}) => Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      RegularText(text: name!,),
      RegularText(text: '$price',color: AppColor.black,),
    ],
  );

}
