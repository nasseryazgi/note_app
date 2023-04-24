import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24, bottom: 24, left: 16),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Color(0xffFFCC80), borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            // contentPadding: EdgeInsets.zero,
            title: const Text(
              'Flutter tips',
              style: TextStyle(fontSize: 26, color: Colors.black),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 16),
              child: Text(
                'Build your Career With\n Nasser Al Yazgi',
                style: TextStyle(
                    fontSize: 18, color: Colors.black.withOpacity(.5)),
              ),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.trash,
                  size: 24,
                  color: Colors.black,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Text(
              'May21 , 2022',
              style:
                  TextStyle(fontSize: 16, color: Colors.black.withOpacity(.5)),
            ),
          )
        ],
      ),
    );
  }
}
