import 'package:auth_flow/widgets/custom_text_field.dart';
import 'package:auth_flow/widgets/custom_title_item.dart';
import 'package:flutter/material.dart';

class CustomSignUpBodyContent extends StatelessWidget {
  const CustomSignUpBodyContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomTitleItem(
          title: 'Full Name',
        ),
        CustomTextField(
          hintText: 'Example@Example.Com',
        ),
        CustomTitleItem(title: 'Email'),
        CustomTextField(
          hintText: 'Example@Example.Com',
        ),
        CustomTitleItem(
          title: 'Mobile Number',
        ),
        CustomTextField(
          hintText: '+966',
        ),
        CustomTitleItem(
          title: 'Date of Birth',
        ),
        CustomTextField(
          hintText: 'DD / MM / YYYY',
        ),
        CustomTitleItem(
          title: 'Password',
        ),
        CustomTextField(
          isObscure: true,
          hintText: 'Enter your password',
        ),
        CustomTitleItem(
          title: 'Confirm Password',
        ),
        CustomTextField(
          isObscure: true,
          suffixIcon: Icon(
            Icons.visibility_off_outlined,
            color: Color(0xffafa69d),
          ),
          hintText: 'Confirm your password',
        ),
      ],
    );
  }
}
