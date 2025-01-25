import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.maxLines = 1,
  });

  final String hintText;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.black,
      maxLines: maxLines,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xffddbbb2).withOpacity(0.3),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color(0xffada399),
        ),
        border: buildBorder(),
        enabledBorder: buildBorder(Colors
            .white), // for unfocused => The user is not interacting with the TextField.
        focusedBorder: buildBorder(const Color(
            0xffddbbb2)), // for focused => The user is interacting with the TextField.
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: const BorderRadius.all(
          Radius.circular(14),
        ),
        borderSide: BorderSide(
          color: color ?? Colors.white,
        ));
  }
}
