import 'package:flutter/material.dart';
import 'package:sample_task/core/utils/app_colors.dart';
import 'package:sample_task/presentation/widgets/custom_image.dart';
import 'package:sample_task/theme/text_styles.dart';

class GridsizingOneItemWidget extends StatelessWidget {
  const GridsizingOneItemWidget(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.subtitle});
  final String imagePath;
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 48,
          width: double.maxFinite,
          margin: const EdgeInsets.symmetric(horizontal: 8),
          child: Stack(
            alignment: Alignment.center,
            children: [
              const SizedBox(
                height: 48,
                width: 48,
                child: CircularProgressIndicator(
                  value: 0.87,
                  backgroundColor: AppColors.circularProgressBarColor,
                  color: AppColors.primaryColor,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: CustomImage(
                  imagePath: imagePath,
                  height: 10,
                  width: 23,
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: TextStyles.header2.copyWith(fontSize: 14),
        ),
        Text(
          subtitle,
          style: TextStyles.grey1Text,
        )
      ],
    );
  }
}
