import 'package:flutter/material.dart';

import '../widgets/notes_views_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:NotesViewBody() ,
      floatingActionButton: FloatingActionButton(onPressed: (){}, child: Icon(Icons.add ,size: 25,),),
    );
  }


}




