import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_notes_cubit.dart';

import '../constant.dart';

class ColorItem extends StatelessWidget {
  ColorItem({Key? key, required this.isActive, required this.color})
      : super(key: key);
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 38,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 36,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 38,
            backgroundColor: color,
          );
  }
}

class ClorsListView extends StatefulWidget {
  ClorsListView({
    Key? key,
  }) : super(key: key);

  @override
  State<ClorsListView> createState() => _ClorsListViewState();
}

class _ClorsListViewState extends State<ClorsListView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
          itemCount: kColor.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  setState(() {});
                  BlocProvider.of<AddNotesCubit>(context).color = kColor[index];
                },
                child: ColorItem(
                  isActive: currentIndex == index,
                  color: kColor[index],
                ),
              ),
            );
          }),
    );
  }
}
