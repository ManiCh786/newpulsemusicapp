import 'package:flutter/material.dart';

class VerticalSpacer extends StatelessWidget {
  const VerticalSpacer({Key? key, this.space = 10.0}) : super(key: key);

  final double space;
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: this.space);
  }
}

class HorizontalSpacer extends StatelessWidget {
  const HorizontalSpacer({Key? key, this.space = 10.0}) : super(key: key);
  final double space;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: this.space,
    );
  }
}
