import 'package:flutter/material.dart';

import '../constant.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(16)
      ),
      child: const Center(
        child: Text('Add',style: TextStyle(color: Colors.black ,fontSize: 14),),
      ),
    );
  }
}
