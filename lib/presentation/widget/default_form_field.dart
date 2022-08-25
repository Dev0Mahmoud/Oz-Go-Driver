import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DefaultFormField extends StatefulWidget {
  TextEditingController? controller;
  String? label;
  double? height;
  double? radius;
  EdgeInsetsGeometry? contentPadding;
  EdgeInsetsGeometry? outFormPadding;
  String? hintText;
  final TextInputType? keyboard;
  Icon? prefixIcon;
  Icon? suffixIcon;
  VoidCallback? suffixPressed;
  VoidCallback? onTap;
  TextStyle? labelStyle;
  TextStyle? hintStyle;
  TextStyle? formFieldStyle;
  TextStyle? errorStyle;
  Color? cursorColor;
  Color? fillColor;
  Color? focusedBorderColor;
  Color? borderColor;
  Color? errorBorderColor;
  String? validateText;
  Function(String)? onChanged;
  VoidCallback? onSubmitted;
  bool? isPassword;
  bool? noInput;
  TextDirection? textDirection;

  DefaultFormField(
      {required this.controller,
      this.label,
      this.height,
      this.hintText,
      required this.keyboard,
      this.prefixIcon,
      this.suffixIcon,
      this.suffixPressed,
      this.labelStyle,
      this.hintStyle,
      this.formFieldStyle,
      this.errorStyle,
      this.cursorColor,
      this.fillColor,
      this.focusedBorderColor,
      this.borderColor,
      this.errorBorderColor,
      this.validateText,
      this.onChanged,
      this.onSubmitted,
      this.isPassword,
      this.noInput,
      this.textDirection,
      this.onTap,
        this.radius,
        this.contentPadding,
        this.outFormPadding,
      });

  @override
  State<DefaultFormField> createState() => _DefaultFormFieldState(
      this.controller
  );
}

class _DefaultFormFieldState extends State<DefaultFormField> {
  GlobalKey<FormState>? formKey = GlobalKey<FormState>();
  TextEditingController? controller;

  _DefaultFormFieldState( this.controller);


  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Container(
        padding: widget.outFormPadding ??EdgeInsetsDirectional.all(10),
        height: widget.height ?? 68.h,
        width: double.infinity.w,
        child: TextFormField(
          textDirection: widget.textDirection,
          style: widget.formFieldStyle ?? TextStyle(color: Colors.black),
          cursorColor: widget.cursorColor ?? Colors.black,
          onChanged: widget.onChanged,
          onFieldSubmitted: (value) {
            if (formKey!.currentState!.validate()) {
              return widget.onSubmitted ?? print('no Submitted Function');
            }
          },
          readOnly: widget.noInput ?? false,
          validator: (String? value) {
            if (value!.isEmpty) {
              return widget.validateText;
            }
            return null;
          },
          controller: widget.controller,
          decoration: InputDecoration(
            enabled: true,
            contentPadding: widget.contentPadding ?? EdgeInsets.all( 15.r),
            filled: true,
            fillColor: widget.fillColor ?? Colors.white,
            focusedBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: widget.focusedBorderColor ?? Colors.black),
              borderRadius: BorderRadius.circular(widget.radius ?? 8.r),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: widget.borderColor ?? Colors.black),
              borderRadius: BorderRadius.circular(widget.radius ?? 8.r),
            ),
            errorBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: widget.errorBorderColor ?? Colors.red),
              borderRadius: BorderRadius.circular(widget.radius ?? 8.r),
            ),
            errorStyle: widget.errorStyle,
            labelText: widget.label,
            labelStyle: widget.labelStyle ??
                TextStyle(
                  color: Colors.black,
                  fontSize: 20.sp,
                ),
            prefixStyle: TextStyle(color: Colors.black),
            prefixIcon: widget.prefixIcon,
            suffixIcon: IconButton(
              icon: widget.suffixIcon ?? SizedBox(),
              onPressed: widget.suffixPressed,
            ),
            hintText: widget.hintText,
            hintStyle: widget.hintStyle ??
                TextStyle(
                  fontSize: 16.sp,
                  color: Colors.grey,
                ),
          ),
          keyboardType: widget.keyboard,
          obscureText: widget.isPassword ?? false,
          onTap: widget.onTap,
        ),
      ),
    );
  }
}
