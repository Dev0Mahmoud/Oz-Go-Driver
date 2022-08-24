import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oz_go_driver/presentation/styles/colors.dart';
import 'package:oz_go_driver/presentation/widget/headline_text.dart';

import '../../../constants/assets_manager.dart';
import '../../router/app_router_names.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacementNamed(AppRouterNames.rSignInRoute);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: AppColor.buttonColor,
          body: Center(
            child: HeadLineText(
              text: 'OZ GO',
              color: AppColor.white,
              fontSize: 64.sp,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Image.asset(
            AssetsManager.splashBg,
            fit: BoxFit.cover,
            color: Colors.white.withOpacity(0.2),
            colorBlendMode: BlendMode.modulate,
          ),
        ),
      ],
    );
  }
}
