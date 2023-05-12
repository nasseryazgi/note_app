import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.title, required this.icons})
      : super(key: key);
  final String title;
  final IconData icons;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 28),
        ),
        CustomSearchIcon(
          icon: icons,
        )
      ],
    );
  }
}
