import 'package:flutter/material.dart';

class EquilizerScreen extends StatelessWidget {
  const EquilizerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Container(
          child: Text(
            'This Is Equilizer Screen',
            style: TextStyle(fontWeight: FontWeight.w700, color: Colors.red),
          ),
        ),
      ),
    );
  }
}
