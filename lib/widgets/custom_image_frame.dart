import 'package:flutter/material.dart';

class CustomImageFrame extends StatelessWidget {
  const CustomImageFrame({
    super.key,
    required this.image,
  });

  final Widget image;
  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: image,
    );
  }
}
