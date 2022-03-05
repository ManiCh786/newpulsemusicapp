import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: title.substring(0, 1),
        style: TextStyle(fontSize: 25, color: Colors.purple),
        children: <TextSpan>[
          TextSpan(
            text: title.substring(1),
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
