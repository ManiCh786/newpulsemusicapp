import 'package:flutter/material.dart';

class FoldersScreen extends StatelessWidget {
  const FoldersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Container(
          child: Text(
            'This Is Folders Screen',
            style: TextStyle(fontWeight: FontWeight.w700, color: Colors.blue),
          ),
        ),
      ),
    );
  }
}
