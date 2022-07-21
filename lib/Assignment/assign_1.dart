import 'package:flutter/material.dart';

class AssignOneHome extends StatelessWidget {
  const AssignOneHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          tile(Colors.black26),
          tile(Colors.grey.shade900),
          tile(Colors.pink.shade300),
          tile(Colors.red.shade300),
          tile(Colors.yellow),
          tile(Colors.purple),
          tile(Colors.indigo),
          tile(Colors.blue),
          tile(Colors.green),
          tile(Colors.black26),
          tile(Colors.grey.shade900),
          tile(Colors.pink.shade300),
          tile(Colors.red.shade300),
          tile(Colors.yellow),
          tile(Colors.purple),
          tile(Colors.indigo),
          tile(Colors.blue),
          tile(Colors.green),
        ],
      ),
    ));
  }

  Expanded tile(Color c) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(
          top: 30,
          // bottom: 30,
          left: 5,
          //right: 30,
        ),
        //width: 30,
        height: double.infinity,
        color: c,
      ),
    );
  }
}
