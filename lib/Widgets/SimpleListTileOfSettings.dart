import 'package:flutter/material.dart';

class SimpleListTile extends StatelessWidget {
  const SimpleListTile(
      {Key? key,
      required this.title,
      required this.Desc,
      required this.Ikon,
      required this.onTap})
      : super(key: key);

  final String title;
  final String Desc;
  final IconData Ikon;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title, style: TextStyle(fontWeight: FontWeight.w500)),
      subtitle: Text(Desc),
      onTap: onTap,
      leading: CircleAvatar(
        backgroundColor: Colors.grey.shade200,
        child: Icon(
          this.Ikon,
          color: Colors.grey.shade600,
        ),
      ),
    );
  }
}
