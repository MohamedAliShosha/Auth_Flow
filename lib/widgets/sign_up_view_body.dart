import 'package:auth_flow/widgets/custom_button.dart';
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
        backgroundColor: Colors.white,
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
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
        child: ListView(
          shrinkWrap: true, // to make the list view scrollable
          children: [
            const Column(
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
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                textAlign: TextAlign.center,
                'By continuing, you agree to ',
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            ),
            const Text(
              textAlign: TextAlign.center,
              'Terms of Service and Privacy Policy',
            ),
            CustomButton(
              text: 'Sign Up',
            ),
            Text(
              textAlign: TextAlign.center,
              'or sign up with',
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  child: Image.asset('assets/images/icons8-facebook-50.png'),
                ),
                const SizedBox(
                  width: 25,
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  child: Image.asset('assets/images/icons8-google-50.png'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
