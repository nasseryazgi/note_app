import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_notes_cubit.dart';
import 'add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);
  Widget build(BuildContext context) {
    var bottom = MediaQuery.of(context).viewInsets.bottom;

    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: BlocConsumer<AddNotesCubit, AddNotesState>(
        listener: (context, state) {
          if (state is AddNotesFaliure) {
            print('faild ${state.errorMessage}');
          }
          if (state is AddNotesSucess) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNotesLoading ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: SingleChildScrollView(child: addNoteFrom()),
            ),
          );
        },
      ),
    );
  }
}
