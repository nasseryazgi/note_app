import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:note_app/cubits/add_notes_cubit.dart';
import 'package:note_app/models/note_model.dart';

import 'colors_list_view.dart';
import 'custom_bottom.dart';
import 'custom_textfield.dart';

class addNoteFrom extends StatefulWidget {
  const addNoteFrom({
    Key? key,
  }) : super(key: key);

  @override
  State<addNoteFrom> createState() => _addNoteFromState();
}

class _addNoteFromState extends State<addNoteFrom> {
  GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle; // inputs
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 35,
          ),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hint: 'title',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onSaved: (value) {
              subTitle = value;
            },
            hint: 'content',
            maxLines: 5,
          ),
          const SizedBox(
            height: 22,
          ),
          ClorsListView(),
          const SizedBox(
            height: 22,
          ),
          BlocBuilder<AddNotesCubit, AddNotesState>(
            builder: (context, state) {
              return CustomBottom(
                isLoading: state is AddNotesLoading ? true : false,
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    var currentData = DateTime.now();
                    //    var formattedCurrentDate = DateFormat.yMd().format(currentData);
                    var formattedCurrentDate =
                        DateFormat('dd-mm-yyyy').format(currentData);

                    var noteModel = NoteModel(
                        color: Colors.blue.value,
                        title: title!,
                        subTitle: subTitle!,
                        date: formattedCurrentDate);
                    BlocProvider.of<AddNotesCubit>(context).addNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
