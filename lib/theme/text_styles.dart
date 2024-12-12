import 'package:flutter/material.dart';
import 'package:sample_task/core/utils/app_colors.dart';

class TextStyles {
  static const header1 = TextStyle(
    fontSize: 24,
    fontFamily: 'Dm Serif Display',
    fontWeight: FontWeight.w400,
    color: AppColors.primaryColor,
  );
  static const ratingText = TextStyle(
    fontSize: 12,
    color: AppColors.black1,
    fontFamily: "Roboto",
    fontWeight: FontWeight.w400,
  );
  static const header2 = TextStyle(
    fontSize: 18,
    color: AppColors.black1,
    fontFamily: "Roboto",
    fontWeight: FontWeight.w500,
  );
  static var header3 = TextStyle(
    fontSize: 14,
    color: const Color(0xff000000).withOpacity(1),
    fontFamily: "Roboto",
    fontWeight: FontWeight.w700,
  );
  static const baseText = TextStyle(
    fontSize: 12,
    color: AppColors.grey2,
    fontFamily: "Roboto",
    fontWeight: FontWeight.w500,
  );
  static const grey1Text = TextStyle(
      color: AppColors.grey1,
      fontSize: 14,
      fontFamily: "Roboto",
      fontWeight: FontWeight.w400);
  static const grey12Text = TextStyle(
      color: AppColors.grey1,
      fontSize: 12,
      fontFamily: "Roboto",
      fontWeight: FontWeight.w400);
}
