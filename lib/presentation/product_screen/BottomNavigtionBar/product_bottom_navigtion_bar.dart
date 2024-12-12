import 'package:flutter/material.dart';
import 'package:sample_task/core/utils/app_colors.dart';
import 'package:sample_task/core/utils/image_constant.dart';
import 'package:sample_task/presentation/widgets/custom_button.dart';
import 'package:sample_task/presentation/widgets/custom_image.dart';
import 'package:sample_task/theme/text_styles.dart';

class ProductBottomNavigationBar extends StatelessWidget {
  const ProductBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 16,
      ),
      decoration: BoxDecoration(color: AppColors.white, boxShadow: [
        BoxShadow(
          color: AppColors.blackShade.withOpacity(0.07),
          spreadRadius: 0,
          blurRadius: 9.4,
          offset: const Offset(
            -6,
            0,
          ),
        )
      ]),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImage(
            onTap: () {},
            imagePath: ImageConstant.cartHeart,
            height: 40,
            width: 40,
          ),
          const SizedBox(width: 16),
          CustomButton(
            onTap: () {},
            backgroundColor: AppColors.black1,
            width: 136,
            height: 40,
            text: "ADD TO BAG",
          ),
          const SizedBox(width: 16),
          CustomButton(
            onTap: () {},
            backgroundColor: AppColors.white,
            border: Border.all(color: AppColors.black1),
            width: 136,
            height: 40,
            text: "ADD TO BAG",
            textStyle: TextStyles.header2.copyWith(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
