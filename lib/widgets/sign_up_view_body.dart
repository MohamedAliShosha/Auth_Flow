import 'package:auth_flow/widgets/custom_text_field.dart';
import 'package:auth_flow/widgets/custom_title_item.dart';
import 'package:flutter/material.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 30,
        ),
        titleSpacing: 50,
        title: const Text(
          'Create Account',
          style: TextStyle(
              color: Color(0xffe6b8a8),
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomTitleItem(title: 'Full Name'),
            CustomTextField(
              hintText: 'Example@Example.com',
            ),
            CustomTitleItem(title: 'Email'),
            CustomTextField(
              hintText: 'Example@Example.com',
            ),
            CustomTitleItem(title: 'Mobiile Number'),
            CustomTextField(
              hintText: 'Example@Example.com',
            ),
            CustomTitleItem(title: 'Date of Birth'),
            CustomTextField(
              hintText: 'Example@Example.com',
            ),
            CustomTitleItem(title: 'Password'),
            CustomTextField(
              hintText: 'Example@Example.com',
            ),
            CustomTitleItem(title: 'Confirm Password'),
            CustomTextField(
              hintText: 'Example@Example.com',
            ),
          ],
        ),
      ),
    );
  }
}
