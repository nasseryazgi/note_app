import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/models/note_model.dart';

import '../../constant.dart';
import 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? notes;
  fetchAllNotes()  {
    var notesbox = Hive.box<NoteModel>(kNotesbox);
     notes = notesbox.values.toList();
     emit(NotesSuccess());
  }
}
