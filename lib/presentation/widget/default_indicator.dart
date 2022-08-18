import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../styles/colors.dart';

class DefaultIndicator extends StatelessWidget {
  var controller = PageController();
  int length;
   DefaultIndicator({
    Key? key,
    required this.controller,
     required this.length,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      count: length,
      effect: ExpandingDotsEffect(
        activeDotColor: AppColor.buttonColor,
        dotColor: AppColor.grey,
        dotHeight: 12,
        spacing: 5,
        dotWidth: 12,
      ),
      controller: controller,
    );
  }
}
