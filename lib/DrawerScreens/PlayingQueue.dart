import 'package:flutter/material.dart';

class PlayingQueueScreen extends StatelessWidget {
  const PlayingQueueScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Container(
          child: Text(
            'This Is playing Queue Screen',
            style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
