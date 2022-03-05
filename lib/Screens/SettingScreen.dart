import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:newpulsemusicapp/Widgets/Widgets.dart';

import 'AllSettingScreens/AllSettingScreens.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 0.0,
            backgroundColor: Colors.white,
            title: AppBarTitle(
              title: 'Settings',
            ),
            centerTitle: true,
            leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.grey,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                _SettingListTiles(
                  onTap: () {
                    Get.to(() => GeneralSetting());
                  },
                  title: 'General',
                  Subtitle: 'Configure basic settings',
                  Iconz: Icons.settings_rounded,
                  IconzColor: Colors.red,
                  backgroundColor: Colors.red.shade100,
                ),
                _SettingListTiles(
                  onTap: () {
                    Get.to(() => ThemeScreen());
                  },
                  title: 'Theme',
                  Subtitle: 'Change the look and feel of the app',
                  Iconz: Icons.color_lens_outlined,
                  IconzColor: Colors.green,
                  backgroundColor: Colors.green.shade50,
                ),
                _SettingListTiles(
                  onTap: () {
                    Get.to(() => NowPlaying());
                  },
                  title: 'Now playing',
                  Subtitle: 'Customize now playing screen',
                  Iconz: Icons.play_circle_outline_sharp,
                  IconzColor: Colors.blue,
                  backgroundColor: Colors.blue.shade50,
                ),
                _SettingListTiles(
                  onTap: () {
                    Get.to(() => AudioScreen());
                  },
                  title: 'Audio',
                  Subtitle: 'Change audio settings',
                  Iconz: Icons.music_note,
                  IconzColor: Colors.red,
                  backgroundColor: Colors.red.shade100,
                ),
                _SettingListTiles(
                  onTap: () {
                    Get.to(() => Widgets());
                  },
                  title: 'Widgets',
                  Subtitle: 'Customize widgets and actions',
                  Iconz: Icons.widgets,
                  IconzColor: Colors.green.shade400,
                  backgroundColor: Colors.lightGreen.shade50,
                ),
                _SettingListTiles(
                  onTap: () {
                    Get.to(() => SupportDevelopment());
                  },
                  title: 'Support Development',
                  Subtitle: 'Donate a small amount to support the developers',
                  Iconz: Icons.attach_money,
                  IconzColor: Colors.yellow,
                  backgroundColor: Colors.yellow.shade50,
                ),
                _SettingListTiles(
                  onTap: () {
                    Get.to(() => AboutScreen());
                  },
                  title: 'About',
                  Subtitle: 'Everything about this app',
                  Iconz: Icons.info_outline,
                  IconzColor: Colors.purple.shade800,
                  backgroundColor: Colors.purple.shade100,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SettingListTiles extends StatelessWidget {
  const _SettingListTiles(
      {Key? key,
      required this.title,
      required this.Subtitle,
      required this.Iconz,
      required this.IconzColor,
      required this.onTap,
      required this.backgroundColor})
      : super(key: key);

  final String title;
  final String Subtitle;
  final IconData Iconz;
  final Color backgroundColor;
  final Color IconzColor;
  final Callback onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: CircleAvatar(
        radius: 23,
        child: Icon(
          this.Iconz,
          color: IconzColor,
        ),
        backgroundColor: this.backgroundColor,
      ),
      title: Text(
        this.title,
        style: TextStyle(fontWeight: FontWeight.w300),
      ),
      subtitle: Text(this.Subtitle),
    );
  }
}
