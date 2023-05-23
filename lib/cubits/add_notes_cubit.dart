import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/models/note_model.dart';

part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());
  Color color=  const Color(0xff89A2DC);
  addNote(NoteModel note) async {
    note.color=color.value;
    emit(AddNotesLoading());
    try {
      var notesbox = Hive.box<NoteModel>(kNotesbox);
      await notesbox.add(note);
      emit(AddNotesSucess());
    } catch (e) {
      emit(AddNotesFaliure(e.toString()));
    }
  }
}
