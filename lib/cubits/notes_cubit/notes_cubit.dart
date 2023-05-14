import 'package:bloc/bloc.dart';

import 'notes_state.dart';



class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
}
