import 'package:auth_flow/views/sign_up_view.dart';
import 'package:flutter/material.dart';

class AuthFlow extends StatelessWidget {
  const AuthFlow({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUpView(),
    );
  }
}

void main() {
  runApp(const AuthFlow());
}
