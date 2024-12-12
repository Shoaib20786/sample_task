import 'package:flutter/material.dart';
import 'package:sample_task/presentation/widgets/custom_image.dart';

class ReviewphotositemWidget extends StatelessWidget {
  const ReviewphotositemWidget({super.key, required this.imagePath});
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: CustomImage(
        imagePath: imagePath,
        height: 100,
        width: 100,
      ),
    );
  }
}
