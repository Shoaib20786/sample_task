import 'package:flutter/material.dart';
import 'package:sample_task/core/utils/app_colors.dart';
import 'package:sample_task/theme/text_styles.dart';

class DeliveryLocation extends StatelessWidget {
  const DeliveryLocation(
      {super.key, required this.deliveryLabel, required this.locationName});
  final String deliveryLabel;
  final String locationName;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          deliveryLabel,
          style: TextStyles.ratingText.copyWith(fontWeight: FontWeight.w700),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 4),
          child: Text(
            locationName,
            style: TextStyles.baseText.copyWith(color: AppColors.grey1),
          ),
        ),
      ],
    );
  }
}
