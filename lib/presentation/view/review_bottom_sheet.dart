import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oz_go_driver/constants/assets_manager.dart';
import 'package:oz_go_driver/presentation/widget/circle_avatar.dart';
import '../styles/colors.dart';
import '../widget/default_button.dart';

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({Key? key}) : super(key: key);

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          height: 40.h,
          width: 40.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: AppColor.buttonColor),
          child: Center(
              child: Icon(
            Icons.reviews,
            color: AppColor.white,
          ))),
      onTap: () async {
        await filterBottomSheet(context);
      },
    );
  }

  Future<void> filterBottomSheet(BuildContext context) {
    return showModalBottomSheet<void>(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(39),
        ),
      ),
      isScrollControlled: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      builder: (BuildContext context) {
        return Container(
          height: 600.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.w),
              topRight: Radius.circular(20.w),
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Column(
            children: [
              /// closing top right corner (X) button
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.close_sharp,
                      color: Colors.black87,
                    )),
              ),
              Row(
                children: [
                  DefaultCircleAvatar(
                      imageName: AssetsManager.person, radius: 40),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    height: 50.h,
                    width: 200.w,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Icon(
                            Icons.star,
                            color: AppColor.yellow,
                            size: 25,
                          );
                        }),
                  )
                ],
              ),

              /// Send Button
              DefaultButton(
                label: 'Send',
                textStyle: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w800,
                    color: AppColor.white),
                onPressed: () {
                  Navigator.pop(context);
                },
                height: 56.h,
                width: 344.w,
              ),
            ],
          ),
        );
      },
    );
  }
}
