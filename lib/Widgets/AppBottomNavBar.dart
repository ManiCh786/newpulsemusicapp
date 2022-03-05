import 'package:flutter/material.dart';

class AppBottomNavBar extends StatelessWidget {
  AppBottomNavBar({Key? key, required this.currentIndex, required this.onTap})
      : super(key: key);
  int currentIndex;
  final void Function(int index)? onTap;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0.2,
      selectedItemColor: Colors.purple,
      unselectedItemColor: Colors.grey.shade700,
      selectedLabelStyle: TextStyle(
        fontWeight: FontWeight.w600,
      ),
      currentIndex: currentIndex,
      onTap: onTap,
      items: [
        BottomNavigationBarItem(
          label: 'Home',
          icon:
              currentIndex == 0 ? Icon(Icons.home) : Icon(Icons.home_outlined),
        ),
        BottomNavigationBarItem(
          label: 'Albums',
          icon: currentIndex == 1
              ? Icon(Icons.album)
              : Icon(Icons.album_outlined),
        ),
        BottomNavigationBarItem(
          label: 'Songs',
          icon: currentIndex == 2
              ? Icon(Icons.music_note)
              : Icon(Icons.music_note_outlined),
        ),
        BottomNavigationBarItem(
          label: 'Playlists',
          icon: currentIndex == 3
              ? Icon(Icons.queue_music_outlined)
              : Icon(Icons.queue_music),
        ),
        BottomNavigationBarItem(
          label: 'Artists',
          icon: currentIndex == 4
              ? Icon(Icons.person_sharp)
              : Icon(Icons.person_outline),
        ),
      ],
    );
  }
}
