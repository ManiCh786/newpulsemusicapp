import 'package:flutter/material.dart';

class ToggleListTile extends StatelessWidget {
  const ToggleListTile({
    Key? key,
    required this.title,
    required this.Desc,
    required this.Ikon,
    required this.OnToggle,
    required this.CurrentToggleValue,
  }) : super(key: key);

  final String title;
  final String Desc;
  final IconData Ikon;
  final OnToggle;
  final CurrentToggleValue;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
      ),
      subtitle: Text(Desc),
      leading: CircleAvatar(
        backgroundColor: Colors.grey.shade200,
        child: Icon(
          this.Ikon,
          color: Colors.grey.shade600,
        ),
      ),
      trailing: Switch(
        onChanged: OnToggle,
        value: CurrentToggleValue,
      ),
    );
  }
}
