import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class DefaultPhoneNumFormField extends StatefulWidget {
  TextEditingController? controller;
  String label;
  double? height;
  DefaultPhoneNumFormField({required this.controller, required this.label, this.height});

  @override
  State<DefaultPhoneNumFormField> createState() => _DefaultPhoneNumFormFieldState(controller: controller,label: label);
}


class _DefaultPhoneNumFormFieldState extends State<DefaultPhoneNumFormField> {
  bool isEmpty = true;
  TextEditingController? controller;
  String? label;
  double? height;
  _DefaultPhoneNumFormFieldState({this.controller,this.label});

  @override
  void initState(){
    super.initState();
  }
  var formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: SizedBox(
        height: widget.height ?? 60.h,
        width: double.infinity,
        child: InternationalPhoneNumberInput(
          onInputChanged: (PhoneNumber number) {
                setState((){
                  isEmpty = false;
                });
            print(controller!.text);
          },
          onInputValidated: (bool value) {
            print(value);
          },
          textStyle: TextStyle(
            fontSize: 16.sp,
            color: Colors.grey,
          ),
          selectorConfig: SelectorConfig(
            setSelectorButtonAsPrefixIcon: true,
            selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
            leadingPadding: 10.r,
            trailingSpace: false,
          ),
          ignoreBlank: false,
          autoValidateMode: AutovalidateMode.disabled,
          selectorTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
          initialValue: PhoneNumber(isoCode: 'EG'),
          textFieldController: controller,
          formatInput: false,
          inputDecoration: InputDecoration(
            isDense: true,
            hintText: '00000',
            label: Text(
              label!,
            ),
            suffixIcon: isEmpty ? SizedBox() :
            IconButton(onPressed: () {
             setState((){
               isEmpty = true;
               controller!.clear();
               print( ' mahmoud ${controller!.text}');
             });
            }, icon: Icon(
                Icons.cancel
            ),),
            labelStyle:
                TextStyle(color: Colors.black,),
            enabled: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(19),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(19),
            ),
          ),
          keyboardType:
              TextInputType.numberWithOptions(signed: true, decimal: true),
          onSaved: (PhoneNumber number) {
            print('On Saved: $number');
          },
        ),
      ),
    );
  }
}
