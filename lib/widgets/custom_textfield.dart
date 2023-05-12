import 'package:flutter/material.dart';

import '../constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key, required this.hint, this.maxLines = 1})
      : super(key: key);
  final String hint;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
          hintText: hint,
          // hintStyle: const TextStyle(color: kPrimaryColor),
          border: builtBorder(),
          enabledBorder: builtBorder(),
          focusedBorder: builtBorder(kPrimaryColor)),
    );
  }

  OutlineInputBorder builtBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
