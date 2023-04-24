import 'package:flutter/material.dart';

import '../widgets/add_note_bottom_sheet.dart';
import '../widgets/notes_views_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {   showModalBottomSheet(
            context: context,
            builder: (context) {
              return const AddNoteBottomSheet();
            });},
        child: const Icon(
          Icons.add,
          size: 25,
        ),
      ),
    );
  }
}
