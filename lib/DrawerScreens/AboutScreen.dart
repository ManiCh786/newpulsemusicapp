import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Container(
          child: Text(
            'This Is About Screen',
            style: TextStyle(fontWeight: FontWeight.w700, color: Colors.teal),
          ),
        ),
      ),
    );
  }
}
