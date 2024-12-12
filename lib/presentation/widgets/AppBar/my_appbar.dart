import 'package:flutter/material.dart';
import 'package:sample_task/core/utils/image_constant.dart';
import 'package:sample_task/presentation/widgets/AppBar/app_bar_image.dart';
import 'package:sample_task/theme/text_styles.dart';

PreferredSizeWidget myAppBar() {
  return AppBar(
    elevation: 0,
    toolbarHeight: 56,
    automaticallyImplyLeading: false,
    backgroundColor: Colors.transparent,
    leadingWidth: 34,
    centerTitle: true,
    leading: AppBarImage(
      imagePath: ImageConstant.arrowLeft,
      margin: const EdgeInsets.only(left: 14),
      onTap: () {},
    ),
    title: const Text(
      "THAT GIRL",
      style: TextStyles.header1,
    ),
    actions: [
      AppBarImage(
        onTap: () {},
        imagePath: ImageConstant.searchIcon,
        height: 24,
        width: 24,
      ),
      AppBarImage(
        onTap: () {},
        imagePath: ImageConstant.bagIcon,
        margin: const EdgeInsets.only(
          left: 26,
          right: 14,
        ),
      )
    ],
  );
}
