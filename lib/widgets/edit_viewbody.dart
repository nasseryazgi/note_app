import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';

import '../constant.dart';
import '../models/note_model.dart';
import 'colors_list_view.dart';
import 'custom_app_bar.dart';
import 'custom_textfield.dart';
import 'edit_note_colors_list.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({Key? key, required this.note}) : super(key: key);
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  @override
  String? titles, contents;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            CustomAppBar(
              title: ' EditNotes',
              icons: Icons.check,
              onPressed: () {
                widget.note.title = titles ?? widget.note.title;
                widget.note.subTitle = contents ?? widget.note.subTitle;
                widget.note.save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              },
            ),
            const SizedBox(
              height: 50,
            ),
            CustomTextField(
              onchanged: (title2) {
                titles = title2;
              },
              hint: widget.note.title,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              onchanged: (content3) {
                contents = content3;
              },
              hint: widget.note.subTitle,
              maxLines: 5,
            ),
            const SizedBox(
              height: 20,
            ),
            EditNotesColorsList(note: widget.note),
          ],
        ),
      ),
    );
  }
}
