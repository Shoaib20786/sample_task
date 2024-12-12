// ignore_for_file: unnecessary_import

import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import 'package:sample_task/core/utils/app_colors.dart';
import 'package:sample_task/data/related_products_data.dart';
import 'package:sample_task/data/review_photos_data.dart';
import 'package:sample_task/presentation/product_screen/BottomNavigtionBar/product_bottom_navigtion_bar.dart';
import 'package:sample_task/presentation/widgets/AppBar/my_appbar.dart';
import 'package:sample_task/presentation/widgets/Product%20Details/components/bottom_border_container.dart';
import 'package:sample_task/presentation/widgets/Product%20Details/product_details.dart';
import 'package:sample_task/presentation/widgets/custom_button.dart';
import 'package:sample_task/presentation/widgets/dot_indicator.dart';
import 'package:sample_task/presentation/widgets/gridheart_one_item_widget.dart';
import 'package:sample_task/presentation/widgets/product_slider_item_widget.dart';
import 'package:sample_task/presentation/widgets/reviewphotos_item_widget.dart';
import 'package:sample_task/presentation/widgets/reviews_item_widget.dart';
import 'package:sample_task/theme/text_styles.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  int sliderIndex = 1;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController navigationBarController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: Form(
        key: _formKey,
        child: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  _buildProductSlider(context),
                  const SizedBox(height: 16),
                  _buildProductDetails(context),
                  _buildReviewPhotoSection(context),
                  const SizedBox(height: 24),
                  _buildCustomerReviews(context),
                  const SizedBox(height: 32),
                  _buildRelatedProducts(context),
                  const SizedBox(height: 48),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: const ProductBottomNavigationBar(),
    );
  }

  Widget _buildProductSlider(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: CarouselSlider.builder(
        options: CarouselOptions(
          height: 422,
          initialPage: 0,
          autoPlay: true,
          viewportFraction: 1.0,
          scrollDirection: Axis.horizontal,
          onPageChanged: (index, reason) {
            sliderIndex = index;
          },
        ),
        itemCount: 1,
        itemBuilder: (context, index, realIndex) {
          return const ProductSliderItemWidget();
        },
      ),
    );
  }

  Widget _buildProductDetails(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: const Column(
        children: [
          DotIndicator(),
          SizedBox(height: 4),
          ProductDetails(),
        ],
      ),
    );
  }

  Widget _buildReviewPhotoSection(BuildContext context) {
    return Container(
      height: 186,
      width: double.maxFinite,
      margin: const EdgeInsets.only(left: 16),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: SizedBox(
                      width: double.maxFinite,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                width: double.maxFinite,
                                margin: const EdgeInsets.only(right: 16),
                                padding:
                                    const EdgeInsets.only(top: 24, bottom: 22),
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: AppColors.borderContainer,
                                      width: 1,
                                    ),
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Review Photos(150)",
                                      style: TextStyles.header3.copyWith(
                                        fontSize: 16,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 116,
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          _buildReviewPhotos(context),
        ],
      ),
    );
  }

  Widget _buildReviewPhotos(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          direction: Axis.horizontal,
          spacing: 4,
          children: reviewPhotos.map((reviewPhotos) {
            return ReviewphotositemWidget(
              imagePath: reviewPhotos.imagePath,
            );
          }).toList(),
        ),
      ),
    );
  }

  Widget _buildCustomerReviews(BuildContext context) {
    return BottomBorderContainer(
      child: Container(
        width: double.maxFinite,
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Customer Reviews(800)",
                      style: TextStyles.header3.copyWith(fontSize: 16),
                    ),
                  ),
                  const SizedBox(height: 24),
                  ListView.separated(
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return const ReviewsItemWidget();
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: 32,
                      );
                    },
                    itemCount: 3,
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  CustomButton(
                    border:
                        Border.all(color: const Color(0xff000000), width: 0.8),
                    width: 134,
                    height: 40,
                    text: "See all reviews",
                    textStyle: TextStyles.header2.copyWith(fontSize: 14),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRelatedProducts(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                Container(
                  width: double.maxFinite,
                  padding: const EdgeInsets.only(top: 16, bottom: 14),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: AppColors.primaryColor,
                        width: 1,
                      ),
                    ),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "You Might Also Like ",
                        style: TextStyles.header3.copyWith(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                ResponsiveGridListBuilder(
                  minItemWidth: 1,
                  maxItemsPerRow: 2,
                  minItemsPerRow: 2,
                  horizontalGridSpacing: 16,
                  verticalGridSpacing: 16,
                  builder: (context, items) => ListView(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    children: items,
                  ),
                  gridItems: relatedProducts.map((product) {
                    return GridHeartOneItemWidget(
                      imagePath: product.imagePath,
                      title: product.title,
                      price: product.price,
                    );
                  }).toList(),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
