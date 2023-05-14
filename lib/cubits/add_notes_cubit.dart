import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/models/note_model.dart';

part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
 // bool isLoading = false;

  AddNotesCubit() : super(AddNotesInitial());
  addNote(NoteModel note) async {
  //  isLoading=true;
    emit(AddNotesLoading());
    try {
      var notesbox = Hive.box<NoteModel>(kNotesbox);
      await notesbox.add(note);
     // isLoading=false;
      emit(AddNotesSucess());
    } catch (e) {
      // isLoading=false;

      emit(AddNotesFaliure(e.toString()));
    }
  }
}
