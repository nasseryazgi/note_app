import 'dart:ui';

import 'package:flutter/material.dart';

import '../constant.dart';
import '../models/note_model.dart';
import 'colors_list_view.dart';
import 'edit_viewbody.dart';


class EditNotesColorsList extends StatefulWidget {
  const EditNotesColorsList({Key? key, required this.note}) : super(key: key);
  final NoteModel note;
  @override
  State<EditNotesColorsList> createState() => _EditNotesColorsListState();
}


class _EditNotesColorsListState extends State<EditNotesColorsList> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = kColor.indexOf(Color(widget.note.color));
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
          itemCount: kColor.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  widget.note.color = kColor[index].value;
                  setState(() {});
                },
                child: ColorItem(
                  isActive: currentIndex == index,
                  color: kColor[index],
                ),
              ),
            );
          }),
    );
  }
}
