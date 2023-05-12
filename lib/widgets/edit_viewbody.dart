import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children:  [
          SizedBox(height: 50,),
          CustomAppBar(title: 'Notes',icons: Icons.search),
        ],
      ),
    );
  }
}
