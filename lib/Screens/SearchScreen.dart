import 'package:flutter/material.dart';

class AppSearchScreen extends StatelessWidget {
  const AppSearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.grey.shade600),
        elevation: 0.0,
        title: const TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Search for artist, tracks or albums',
          ),
        ),
      ),
      body: const Center(
        child:  Text('Nothing To Show Here'),
      ),
    );
  }
}
