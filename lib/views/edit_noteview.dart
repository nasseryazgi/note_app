import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/edit_viewbody.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: EditNoteViewBody(),
    );
  }
}
