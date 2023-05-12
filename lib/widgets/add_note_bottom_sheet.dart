import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';

import 'custom_bottom.dart';
import 'custom_textfield.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              SizedBox(
                height: 35,
              ),
              CustomTextField(
                hint: 'title',
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextField(
                hint: 'content',
                maxLines: 5,
              ),
              SizedBox(
                height: 32,
              ),
              CustomBottom(),
              SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

