import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sample_task/core/utils/app_colors.dart';
import 'package:sample_task/core/utils/image_constant.dart';
import 'package:sample_task/presentation/widgets/custom_image.dart';
import 'package:sample_task/theme/text_styles.dart';

class GridHeartOneItemWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String price;

  const GridHeartOneItemWidget({
    super.key,
    required this.imagePath,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: const BoxDecoration(
        color: AppColors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 184,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImage(
                  imagePath: imagePath,
                  height: 184,
                  width: double.maxFinite,
                  fit: BoxFit.cover,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    padding: const EdgeInsets.only(top: 10, right: 12),
                    child: CustomImage(
                      imagePath: ImageConstant.heartIcon,
                      height: 24,
                      width: 24,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 6),
          Text(
            price,
            style: TextStyles.baseText.copyWith(
              fontSize: 14,
              color: const Color(0xFF282C3F),
            ),
          ),
          Text(
            title,
            style: TextStyles.grey12Text,
          ),
          const SizedBox(height: 6),
        ],
      ),
    );
  }
}
