import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pinput/pinput.dart';

class Otp extends StatefulWidget {
  Otp({Key? key}) : super(key: key);

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController _pinController = TextEditingController();

  final length = 4;

  final borderColor = Color.fromRGBO(114, 178, 238, 1);

  final errorColor = Color.fromRGBO(255, 234, 238, 1);

  final fillColor = Color.fromRGBO(222, 231, 240, .57);

  final defaultPinTheme = PinTheme(
    width: 56,
    height: 60,
    textStyle: TextStyle(
      fontSize: 22,
      color: Color.fromRGBO(30, 60, 87, 1),
    ),
    decoration: BoxDecoration(
      color: Colors.green,
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: Colors.transparent),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Pinput(
        androidSmsAutofillMethod: AndroidSmsAutofillMethod.smsRetrieverApi,
        obscureText: true,
        controller: _pinController,
        length: 4,
        closeKeyboardWhenCompleted: true,
        pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
        hapticFeedbackType: HapticFeedbackType.vibrate,
        autofillHints: ['1', '2', '3', '4'],
      ),
    );
  }
}
