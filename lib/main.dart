import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/simple_block_observer.dart';
import 'package:note_app/views/notes_views.dart';
import 'constant.dart';
import 'cubits/add_notes_cubit.dart';

void main() async {
  Bloc.observer = SimpleBlockObsever();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());

  await Hive.openBox<NoteModel>(kNotesbox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
        home: const NoteView());
  }
}
