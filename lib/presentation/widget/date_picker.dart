import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oz_go_driver/presentation/styles/colors.dart';

class DatePickerComponent extends StatefulWidget {
  const DatePickerComponent({Key? key}) : super(key: key);

  @override
  State<DatePickerComponent> createState() => _DatePickerComponentState();
}

class _DatePickerComponentState extends State<DatePickerComponent> {
  DateTime _date = DateTime(2022, 8, 15);
  String? selectedMonth;

  void monthConverter() {
    if (_date.month == 1) {
      setState(() => selectedMonth = 'Jan');
    } else if (_date.month == 2) {
      setState(() => selectedMonth = 'Fab');
    } else if (_date.month == 3) {
      setState(() => selectedMonth = 'Mar');
    } else if (_date.month == 4) {
      setState(() => selectedMonth = 'Apr');
    } else if (_date.month == 5) {
      setState(() => selectedMonth = 'May');
    } else if (_date.month == 6) {
      setState(() => selectedMonth = 'Jun');
    } else if (_date.month == 7) {
      setState(() => selectedMonth = 'Jul');
    } else if (_date.month == 8) {
      setState(() => selectedMonth = 'Aug');
    } else if (_date.month == 9) {
      setState(() => selectedMonth = 'Sep');
    } else if (_date.month == 10) {
      setState(() => selectedMonth = 'Oct');
    } else if (_date.month == 11) {
      setState(() => selectedMonth = 'Nov');
    } else if (_date.month == 12) {
      setState(() => selectedMonth = 'Dec');
    }
  }

  @override
  void initState() {
    monthConverter();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      height: 36.h,
      width: 135.w,
      decoration: BoxDecoration(
          color: AppColor.black.withOpacity(.1),
          borderRadius: BorderRadius.circular(20.5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              '${selectedMonth} ${_date.day},${_date.year}',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14.sp,
                  color: AppColor.white,
                  letterSpacing: .25),
            ),
          ),
          Expanded(
            flex: 1,
            child: IconButton(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.zero,
              onPressed: () async {
                DateTime? newDate = await showDatePicker(
                  context: context,
                  initialDate: _date,
                  firstDate: DateTime(2021),
                  lastDate: DateTime(2023),
                );

                setState(() {
                  _date = newDate!;
                  monthConverter();
                });
              },
              icon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: AppColor.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
