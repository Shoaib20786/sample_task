// ignore_for_file: unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sample_task/core/utils/image_constant.dart';
import 'package:sample_task/presentation/widgets/Product%20Details/components/bottom_border_container.dart';
import 'package:sample_task/presentation/widgets/custom_image.dart';
import 'package:sample_task/presentation/widgets/custom_rating_bar.dart';
import 'package:sample_task/theme/text_styles.dart';

class ReviewsItemWidget extends StatelessWidget {
  const ReviewsItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomBorderContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomRatingBar(
            ignoreGestures: true,
            initialrating: 0,
          ),
          const SizedBox(height: 6),
          Text(
            "Highly Recommended",
            style: TextStyles.header3,
          ),
          const SizedBox(
            height: 10,
          ),
          RichText(
            text: TextSpan(
              children: [
                const TextSpan(
                  text:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis  tempor incididun... See more",
                  style: TextStyles.grey12Text,
                ),
                TextSpan(
                  text: "See more",
                  style: TextStyles.header1.copyWith(
                    fontSize: 12,
                    decoration: TextDecoration.underline,
                  ),
                )
              ],
            ),
            textAlign: TextAlign.left,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 8),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              children: [
                CustomImage(
                  imagePath: ImageConstant.rectangle71,
                  height: 100,
                  width: 100,
                ),
                const SizedBox(width: 8),
                CustomImage(
                  imagePath: ImageConstant.rectangle65,
                  height: 100,
                  width: 100,
                ),
              ],
            ),
          ),
          const SizedBox(height: 22),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sofia ",
                            style: TextStyles.header2.copyWith(fontSize: 12),
                          ),
                          const SizedBox(height: 2),
                          SizedBox(
                            width: double.maxFinite,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImage(
                                  imagePath: ImageConstant.checkBroken,
                                  height: 14,
                                  width: 14,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  "Verified Buyer,20th July, 2024",
                                  style: TextStyles.grey1Text
                                      .copyWith(fontSize: 10),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 4),
                const Text(
                  "Helpful?",
                  style: TextStyles.grey12Text,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, bottom: 2),
                  child: CustomImage(
                    imagePath: ImageConstant.thumbup,
                    height: 16,
                    width: 16,
                  ),
                ),
                const SizedBox(width: 4),
                Text(
                  "4",
                  style: TextStyles.header1.copyWith(fontSize: 12),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.more_vert,
                    size: 16,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 36),
        ],
      ),
    );
  }
}
