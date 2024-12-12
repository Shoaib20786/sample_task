import 'package:flutter/material.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import 'package:sample_task/core/utils/app_colors.dart';
import 'package:sample_task/core/utils/image_constant.dart';
import 'package:sample_task/data/reviews_progreebar_data.dart';
import 'package:sample_task/presentation/widgets/Product%20Details/components/arrowdown_text_container.dart';
import 'package:sample_task/presentation/widgets/Product%20Details/components/bottom_border_container.dart';
import 'package:sample_task/presentation/widgets/Product%20Details/components/circular_icon_button.dart';
import 'package:sample_task/presentation/widgets/Product%20Details/components/delivery_location.dart';
import 'package:sample_task/presentation/widgets/Product%20Details/components/gridsizing_one_item_widget.dart';
import 'package:sample_task/presentation/widgets/Product%20Details/components/postal_code_input.dart';
import 'package:sample_task/presentation/widgets/Product%20Details/components/size_selector.dart';
import 'package:sample_task/presentation/widgets/custom_button.dart';
import 'package:sample_task/presentation/widgets/custom_image.dart';
import 'package:sample_task/presentation/widgets/custom_rating_bar.dart';
import 'package:sample_task/theme/text_styles.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          BottomBorderContainer(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Printed Slip Dress",
                    style: TextStyles.header2,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(text: "₹1434", style: TextStyles.header2),
                            TextSpan(text: " "),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, bottom: 2),
                      child: Text(
                        "₹2300",
                        style: TextStyles.baseText
                            .copyWith(decoration: TextDecoration.lineThrough),
                      ),
                    ),
                    Container(
                      width: 34,
                      height: 18,
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      decoration:
                          const BoxDecoration(color: AppColors.primaryColor),
                      child: Center(
                        child: Text(
                          "-40%",
                          style: TextStyles.baseText
                              .copyWith(fontSize: 10, color: AppColors.white),
                        ),
                      ),
                    )
                  ],
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Inclusive of all Taxes",
                    style: TextStyles.baseText,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  "Short slip dress made of satin, featuring a flared A-line silhouette with a printed design detail. Sleeveless with spaghetti straps for a feminine look.",
                  style: TextStyles.baseText.copyWith(color: AppColors.grey1),
                ),
              ],
            ),
          ),
          BottomBorderContainer(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 22),
            child: Column(
              children: [
                const SizedBox(
                  width: double.maxFinite,
                  child: DeliveryLocation(
                    deliveryLabel: "Color:",
                    locationName: "Persian Rose",
                  ),
                ),
                const SizedBox(height: 8),
                const SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      CircularIconButton(
                        backgroundColor: AppColors.primaryColor,
                        icon: Icon(
                          Icons.check,
                          color: AppColors.white,
                          size: 18,
                        ),
                      ),
                      SizedBox(width: 16),
                      CircularIconButton(
                        backgroundColor: AppColors.black1,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 22),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      Text(
                        "SIZE:",
                        style: TextStyles.ratingText
                            .copyWith(fontWeight: FontWeight.w700),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: Text(
                          "Medium",
                          style: TextStyles.baseText
                              .copyWith(color: AppColors.grey1),
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "Size Guide",
                        style: TextStyles.header1.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                const SizeSelector(),
                Container(
                  width: double.maxFinite,
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  child: const DeliveryLocation(
                    deliveryLabel: "DELIVER TO:",
                    locationName: "Mumbai",
                  ),
                ),
                const SizedBox(height: 12),
                Container(
                  width: double.maxFinite,
                  height: 40,
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      PostalCodeinput(),
                      CustomButton(
                        width: 110,
                        height: 40,
                        backgroundColor: AppColors.black1,
                        text: "Check",
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  width: double.maxFinite,
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: [
                      CustomImage(
                        imagePath: ImageConstant.bankNoteIcon,
                        height: 20,
                        width: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text(
                          "Cash On Delivery Available",
                          style: TextStyles.grey1Text.copyWith(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  width: double.maxFinite,
                  margin: const EdgeInsets.only(left: 8, right: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImage(
                        imagePath: ImageConstant.truckicoon,
                        height: 20,
                        width: 20,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Standard Delivery:",
                                style: TextStyles.ratingText.copyWith(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 4),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text:
                                          "Free Shipping on this product.Save ",
                                      style: TextStyles.grey1Text.copyWith(
                                        fontSize: 12,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "₹99",
                                      style: TextStyles.grey1Text.copyWith(
                                        fontSize: 12,
                                      ),
                                    ),
                                    const TextSpan(text: " "),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                              const SizedBox(height: 4),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Estimated Delivery by ",
                                      style: TextStyles.grey1Text.copyWith(
                                        fontSize: 12,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "Tue, 26 mar - thu 28 Mar",
                                      style: TextStyles.header2.copyWith(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 26),
                Container(
                  width: double.maxFinite,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color(0xffE0E0E0),
                        width: 1,
                      ),
                    ),
                  ),
                  child: const Column(
                    children: [
                      ArrowDownTextContainer(
                        text: "About the Product",
                        border: Border(
                          top: BorderSide(
                            color: AppColors.borderContainer,
                            width: 1,
                          ),
                          bottom: BorderSide(
                            color: AppColors.borderContainer,
                            width: 1,
                          ),
                        ),
                      ),
                      ArrowDownTextContainer(
                        text: "Wash Care Instructions",
                        border: Border(
                          bottom: BorderSide(
                            color: AppColors.borderContainer,
                            width: 1,
                          ),
                        ),
                        padding: EdgeInsets.fromLTRB(24, 24, 24, 22),
                      ),
                      ArrowDownTextContainer(
                        text: "Service & Policy",
                        padding: EdgeInsets.symmetric(horizontal: 24),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: double.maxFinite,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Ratings & Reviews",
                              style: TextStyles.header3.copyWith(fontSize: 16),
                            ),
                            Text(
                              "Write Review",
                              style: TextStyles.header1.copyWith(
                                fontSize: 14,
                                decoration: TextDecoration.underline,
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 12),
                      Container(
                        width: double.maxFinite,
                        padding: const EdgeInsets.only(top: 28, bottom: 26),
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                color: AppColors.borderContainer, width: 1),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(height: 2),
                            Text(
                              "4.0/5",
                              style: TextStyles.header2.copyWith(
                                fontSize: 24,
                              ),
                            ),
                            const SizedBox(height: 4),
                            CustomRatingBar(
                              initialrating: 4,
                              itemSize: 24,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              "Based on 237 star Ratings",
                              style: TextStyles.baseText.copyWith(
                                color: AppColors.grey1,
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 32),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 38,
                          right: 8,
                        ),
                        child: ResponsiveGridListBuilder(
                          minItemWidth: 1,
                          minItemsPerRow: 2,
                          maxItemsPerRow: 2,
                          horizontalGridSpacing: 104,
                          verticalGridSpacing: 104,
                          builder: (context, items) => ListView(
                            shrinkWrap: true,
                            padding: EdgeInsets.zero,
                            physics: const NeverScrollableScrollPhysics(),
                            children: items,
                          ),
                          gridItems: reviewsProgress.map((reviewsProgress) {
                            return GridsizingOneItemWidget(
                                imagePath: reviewsProgress.imagePath,
                                title: reviewsProgress.title,
                                subtitle: reviewsProgress.subtitle);
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
