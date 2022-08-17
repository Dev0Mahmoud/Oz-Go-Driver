import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../styles/colors.dart';

class ChatMessage extends StatelessWidget {
  final String content;
  final String time;
  final bool isSender;
  const ChatMessage._({
    Key? key,
    required this.isSender,
    required this.content,
    required this.time,
  }) : super(key: key);

  factory ChatMessage.sender({
    Key? key,
    required String content,
    required String time,
  }) {
    return ChatMessage._(
      isSender: true,
      key: key,
      content: content,
      time: time,
    );
  }
  factory ChatMessage.reciever({
    Key? key,
    required String content,
    required String time,
  }) {
    return ChatMessage._(
      isSender: false,
      key: key,
      content: content,
      time: time,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment:
          !isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(
            left: isSender ? 10.w : 0,
            right: isSender ? 0 : 10.w,
          ),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                blurRadius: 10,
                offset: Offset(0, 3.h),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(130),
            child: Container(
              decoration: BoxDecoration(
                color: isSender ? AppColor.white : AppColor.chatColor,
                //FIXME: chat_message : can't apply box shadow
              ),
              // margin: const EdgeInsets.only(left: 10.0),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Text(
                          content,
                          style: TextStyle(
                            color: isSender ? AppColor.black : AppColor.white,
                            fontSize: ScreenUtil().setSp(14),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: 8.0.h,
                          width: 70.w,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          time,
                          style: TextStyle(
                            color: isSender ? AppColor.grey : AppColor.white,
                            fontSize: ScreenUtil().setSp(12),
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
