import 'package:flutter/material.dart';

class ScanMediaScreen extends StatelessWidget {
  const ScanMediaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Container(
          child: Text(
            'This Is ScanMedia Screen',
            style: TextStyle(fontWeight: FontWeight.w700, color: Colors.green),
          ),
        ),
      ),
    );
  }
}
