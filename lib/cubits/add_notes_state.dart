part of 'add_notes_cubit.dart';

@immutable
abstract class AddNotesState {}

class AddNotesInitial extends AddNotesState {}

class AddNotesLoading extends AddNotesState {}

class AddNotesSucess extends AddNotesState {}

class AddNotesFaliure extends AddNotesState {
  String errorMessage;
  AddNotesFaliure(this.errorMessage);
}
