import 'package:flutter/material.dart';
import 'package:sample_task/core/utils/app_colors.dart';
import 'package:sample_task/theme/text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key, required this.controller, this.hintText});
  final TextEditingController controller;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText ?? "",
        hintStyle: TextStyles.grey1Text.copyWith(color: AppColors.black1),
        isDense: true,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 8,
        ),
        border: const OutlineInputBorder(
          borderSide:
              BorderSide(width: 1, color: AppColors.textFormFieldBorderColor),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide:
              BorderSide(width: 1, color: AppColors.textFormFieldBorderColor),
        ),
      ),
    );
  }
}
