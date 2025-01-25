import 'package:auth_flow/views/sign_up_view.dart';
import 'package:auth_flow/widgets/custom_button.dart';
import 'package:auth_flow/widgets/custom_text_field.dart';
import 'package:auth_flow/widgets/custom_title_item.dart';
import 'package:flutter/material.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

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
          titleSpacing: 100,
          title: const Text(
            'Log In',
            style: TextStyle(
                color: Color(0xffe6b8a8),
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          child: ListView(
            shrinkWrap: true, // to make the list view scrollable
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Text('Please enter your details to proceed.'),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              const Column(
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
              ),
              const SizedBox(
                height: 50,
              ),
              CustomButton(
                text: 'Log In',
              ),
              const Text(
                textAlign: TextAlign.center,
                'Forget Password?',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 50,
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
                    margin: const EdgeInsets.only(top: 10),
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
                    margin: const EdgeInsets.only(top: 10),
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
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Don\'t have an account?',
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpView(),
                        ),
                      );
                    },
                    child: const Text(
                      ' Sign Up',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
