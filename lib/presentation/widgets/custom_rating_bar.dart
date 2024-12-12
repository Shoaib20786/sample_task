import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sample_task/core/utils/app_colors.dart';

// ignore: must_be_immutable
class CustomRatingBar extends StatelessWidget {
  CustomRatingBar(
      {super.key,
      this.alignment,
      this.ignoreGestures,
      this.initialrating,
      this.itemCount,
      this.color,
      this.unselectedColor,
      this.onRatingUpdate,
      this.itemSize});

  final Alignment? alignment;
  final bool? ignoreGestures;
  final double? initialrating;
  final double? itemSize;
  final int? itemCount;
  final Color? color;
  final Color? unselectedColor;
  Function(double)? onRatingUpdate;
  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center, child: ratingBarWidget)
        : ratingBarWidget;
  }

  Widget get ratingBarWidget => RatingBar.builder(
        ignoreGestures: ignoreGestures ?? false,
        initialRating: initialrating ?? 0,
        minRating: 0,
        direction: Axis.horizontal,
        allowHalfRating: false,
        itemSize: itemSize ?? 20,
        unratedColor: unselectedColor,
        itemCount: itemCount ?? 5,
        updateOnDrag: true,
        itemBuilder: (context, _) {
          return Icon(
            Icons.star,
            color: color ?? AppColors.primaryColor,
          );
        },
        onRatingUpdate: (rating) {
          onRatingUpdate!.call(rating);
        },
      );
}
