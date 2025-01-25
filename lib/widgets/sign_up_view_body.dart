import 'package:auth_flow/widgets/custom_text_field.dart';
import 'package:auth_flow/widgets/custom_title_item.dart';
import 'package:flutter/material.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
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
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
        child: ListView(
          children: const [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomTitleItem(
                  title: 'Full Name',
                ),
                CustomTextField(
                  hintText: 'Example@Example.com',
                ),
                CustomTitleItem(title: 'Email'),
                CustomTextField(
                  hintText: 'Example@Example.com',
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
                  hintText: 'Example@Example.com',
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
                  hintText: 'Example@Example.com',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
