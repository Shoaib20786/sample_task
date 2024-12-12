import 'package:flutter/material.dart';
import 'package:sample_task/presentation/widgets/custom_text_form_field.dart';

class PostalCodeinput extends StatelessWidget {
  PostalCodeinput({super.key});
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: CustomTextFormField(
      controller: controller,
      hintText: "4000001",
    ));
  }
}
