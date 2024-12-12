import 'package:flutter/material.dart';
import 'package:sample_task/core/utils/app_colors.dart';
import 'package:sample_task/core/utils/image_constant.dart';
import 'package:sample_task/presentation/widgets/custom_image.dart';
import 'package:sample_task/theme/text_styles.dart';

class ProductSliderItemWidget extends StatelessWidget {
  const ProductSliderItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 422,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImage(
            imagePath: ImageConstant.rectangle616,
            height: 422,
            width: double.maxFinite,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: SizedBox(
              width: 200,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      width: 145,
                      margin: const EdgeInsets.only(
                        left: 16,
                        bottom: 16,
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 42,
                            decoration: const BoxDecoration(
                              border: Border(
                                right: BorderSide(
                                  color: AppColors.borderContainer,
                                  width: 1,
                                ),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "3.9",
                                  style: TextStyles.ratingText,
                                ),
                                Expanded(
                                  child: CustomImage(
                                    imagePath: ImageConstant.star1,
                                    height: 16,
                                    width: 16,
                                    margin: const EdgeInsets.only(
                                      left: 5,
                                      right: 6,
                                    ),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            "237 Reviews",
                            style: TextStyles.ratingText,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
