import 'package:auth_flow/widgets/custom_text_field.dart';
import 'package:auth_flow/widgets/custom_title_item.dart';
import 'package:flutter/material.dart';

class CustomBodayContent extends StatelessWidget {
  const CustomBodayContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomTitleItem(
          title: 'Username Or Email',
        ),
        CustomTextField(
          hintText: 'example@example.com',
        ),
        CustomTitleItem(
          title: 'Password',
        ),
        CustomTextField(
          suffixIcon: Icon(
            Icons.visibility_off_outlined,
            color: Color(0xffafa69d),
          ),
          isObscure: true,
          hintText: 'Enter your password',
        ),
      ],
    );
  }
}
