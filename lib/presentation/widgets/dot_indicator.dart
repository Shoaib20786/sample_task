import 'package:flutter/material.dart';
import 'package:sample_task/core/utils/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 10,
      child: AnimatedSmoothIndicator(
        activeIndex: 0,
        count: 4,
        effect: ScrollingDotsEffect(
          spacing: 8,
          activeDotColor: AppColors.primaryColor,
          dotColor: AppColors.indicatorDotColor,
          activeDotScale: 1.6666666666666667,
          dotHeight: 6,
          dotWidth: 6,
        ),
      ),
    );
  }
}
