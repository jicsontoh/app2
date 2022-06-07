import 'package:flutter/material.dart';

class Widgs extends StatelessWidget {
  // const Widgs({Key? key}) : super(key: key);

  Icon icon;

  Widgs(this.icon)

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: 8,
      ),
      Icon(icon),
      Container(
        child: Text('Backpack'),
      ),
    ])
  }
}
