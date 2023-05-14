
import 'package:flutter/cupertino.dart';

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
  String? title, subTitle;  // inputs
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children:  [
          const SizedBox(
            height: 35,
          ),
          CustomTextField(
            onSaved: (value){
              title = value;
            },
            hint: 'title',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onSaved: (value){
              subTitle = value;
            },
            hint: 'content',
            maxLines: 5,
          ),
          const SizedBox(
            height: 32,
          ),
          CustomBottom(onTap: (){
            if(formkey.currentState!.validate()){
              formkey.currentState!.save();
            }else {
              autovalidateMode =AutovalidateMode.always;
              setState(() {

              });
            }
          },),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
