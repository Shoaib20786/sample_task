import 'package:flutter/material.dart';
import 'package:sample_task/core/utils/image_constant.dart';
import 'package:sample_task/presentation/widgets/custom_image.dart';
import 'package:sample_task/theme/text_styles.dart';

class ArrowDownTextContainer extends StatelessWidget {
  const ArrowDownTextContainer(
      {super.key, this.padding, this.border, required this.text});
  final EdgeInsetsGeometry? padding;
  final BoxBorder? border;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 22),
      decoration: BoxDecoration(
        border: border,
      ),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyles.header3,
          ),
          CustomImage(
            imagePath: ImageConstant.arrowdownIcon,
            height: 24,
            width: 26,
          ),
        ],
      ),
    );
  }
}
