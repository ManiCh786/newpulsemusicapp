import 'package:flutter/material.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Text(
          'This Is Library Screen',
          style: TextStyle(fontWeight: FontWeight.w700, color: Colors.amber),
        ),
      ),
    );
  }
}
