import 'package:auth_flow/widgets/custom_image_frame.dart';
import 'package:flutter/material.dart';

class CustomFacebookAndGoogleIcons extends StatelessWidget {
  const CustomFacebookAndGoogleIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageFrame(
          image: Image(
            image: AssetImage('assets/images/icons8-facebook-50.png'),
          ),
        ),
        SizedBox(
          width: 25,
        ),
        CustomImageFrame(
          image: Image(
            image: AssetImage('assets/images/icons8-google-50.png'),
          ),
        ),
      ],
    );
  }
}
