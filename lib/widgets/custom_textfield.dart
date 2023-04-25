import 'package:flutter/material.dart';

import '../constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
          hintText: 'Title',
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
