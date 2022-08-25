import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oz_go_driver/constants/assets_manager.dart';
import 'package:oz_go_driver/presentation/widget/circle_avatar.dart';
import 'package:oz_go_driver/presentation/widget/default_form_field.dart';
import 'package:oz_go_driver/presentation/widget/quick_comment_selection.dart';

import '../styles/colors.dart';
import '../widget/default_button.dart';

class ReviewBottomSheet extends StatefulWidget {
  const ReviewBottomSheet({Key? key}) : super(key: key);

  @override
  State<ReviewBottomSheet> createState() => _ReviewBottomSheetState();
}

class _ReviewBottomSheetState extends State<ReviewBottomSheet> {
  TextEditingController? controller;

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

              /// person circle avatar , review star count
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
              SizedBox(
                height: 30.h,
              ),

              /// quick comment selection
              Container(
                width: double.infinity,
                child: Wrap(
                  spacing: 15.w,
                  runSpacing: 20.h,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  runAlignment: WrapAlignment.start,
                  children: [
                    QuickCommentSelection(
                        onTap: () {},
                        width: 180.w,
                        text: 'Concerned about the captain\'s needs'),
                    QuickCommentSelection(
                      width: 120.w,
                      text: ' Very friendly',
                      onTap: () {},
                    ),
                    QuickCommentSelection(
                      width: 120.w,
                      text: 'Fantastic track',
                      onTap: () {},
                    ),
                    QuickCommentSelection(
                      width: 120.w,
                      text: 'Fantastic driving',
                      onTap: () {
                        setState(() {
                          controller?.text = 'adasdasd';
                        });
                        print(controller!.text);
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 30.h),
                child: DefaultFormField(
                  height: 70.h,
                  keyboard: TextInputType.text,
                  controller: controller,
                  hintText: 'I encountered some problems',
                  label: 'leave a comment',
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Mont',
                      color: AppColor.black,
                      fontSize: 10.sp),
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Mont',
                      color: AppColor.black,
                      fontSize: 10.sp),
                ),
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
