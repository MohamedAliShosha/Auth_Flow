import 'package:auth_flow/widgets/custom_button.dart';
import 'package:auth_flow/widgets/custom_face_book_and_google_icons.dart';
import 'package:auth_flow/widgets/custom_sign_up_body_content.dart';
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
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black.withOpacity(0.6),
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
            const CustomSignUpBodyContent(),
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
              'Terms of Use and Privacy Policy',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            CustomButton(
              text: 'Sign Up',
            ),
            Text(
              textAlign: TextAlign.center,
              'or sign up with',
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
            const CustomFacebookAndGoogleIcons(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already have an account?',
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    ' Login',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
