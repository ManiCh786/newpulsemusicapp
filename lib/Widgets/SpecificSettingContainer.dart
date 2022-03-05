import 'package:flutter/material.dart';

class SpecificSettingsContainer extends StatelessWidget {
  const SpecificSettingsContainer(
      {Key? key, required this.title, required this.children})
      : super(key: key);

  final String title;
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 69,
              ),
              Text(
                title.toUpperCase(),
                style: TextStyle(
                    fontWeight: FontWeight.w500, color: Colors.purple),
              ),
            ],
          ),
          ...children,
        ],
      ),
    );
  }
}
