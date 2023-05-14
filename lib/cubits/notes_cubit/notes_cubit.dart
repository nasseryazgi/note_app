import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/models/note_model.dart';

import '../../constant.dart';
import 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchAllNotes(NoteModel note) async {
    emit(NotesLoading());
    try {
      var notesbox = Hive.box<NoteModel>(kNotesbox);
      List<NoteModel> notes = notesbox.values.toList();

      emit(NotesSuccess(notes));
    } catch (e) {
      emit(NotesFailure(e.toString()));
    }
  }
}
