import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'custom_textfield.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            CustomAppBar(title: ' EditNotes', icons: Icons.search),
            SizedBox(
              height: 50,
            ),
            CustomTextField(
              hint: 'Title',
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              hint: 'Content',
              maxLines: 5,
            ),
          ],
        ),
      ),
    );
  }
}
