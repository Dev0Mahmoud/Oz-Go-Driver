import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../styles/colors.dart';

const Object? selectedValueOfDropDownItem = 'English';
const List<DropdownMenuItem> dropDownItems = [
  DropdownMenuItem(
    value: 'Arabic',
    child: Text('Arabic'),
  ),
  DropdownMenuItem(
    value: 'English',
    child: Text('English'),
  ),
];

class DropDownComponent extends StatefulWidget {
  final List<DropdownMenuItem> dropdownItems;
  Object? selectedValue;
  DropDownComponent(
      {Key? key,
      this.selectedValue = selectedValueOfDropDownItem,
      this.dropdownItems = dropDownItems})
      : super(key: key);

  @override
  State<DropDownComponent> createState() => _DropDownComponentState(
      dropdownItems: dropdownItems, selectedValue: selectedValue);
}

class _DropDownComponentState extends State<DropDownComponent> {
  _DropDownComponentState(
      {this.selectedValue = selectedValueOfDropDownItem,
      this.dropdownItems = dropDownItems});

  final List<DropdownMenuItem> dropdownItems;
  Object? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 45.h,
        width: 313.w,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 1.0,
            ),
          ],
          color: AppColor.containerBG,
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Row(
            children: [
              Expanded(flex: 1, child: Container()),
              Expanded(
                  flex: 2,
                  child: DropdownButton<dynamic>(
                      alignment: Alignment.center,
                      isExpanded: true,
                      icon: const Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: Colors.black,
                      ),
                      elevation: 16,
                      style: const TextStyle(
                        color: Colors.black,
                        fontFamily: 'Medium',
                      ),
                      underline: Container(),
                      value: selectedValue,
                      items: dropdownItems,
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value!;
                        });
                      }))
            ],
          ),
        ),
      ),
    );
  }
}
