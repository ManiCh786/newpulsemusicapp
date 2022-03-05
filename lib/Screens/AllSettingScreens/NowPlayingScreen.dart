import 'package:flutter/material.dart';
import 'package:newpulsemusicapp/Widgets/Widgets.dart';

class NowPlaying extends StatefulWidget {
  NowPlaying({Key? key}) : super(key: key);

  @override
  _NowPlayingState createState() => _NowPlayingState();
}

class _NowPlayingState extends State<NowPlaying> {
  bool seekbuttons = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitle(
          title: 'Now playing',
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.grey),
        centerTitle: true,
      ),
      body: SpecificSettingsContainer(
        title: 'STYLE',
        children: [
          SimpleListTile(
            title: 'Select now playing style',
            Desc: 'Choose now playing screen style',
            Ikon: Icons.screen_rotation_outlined,
            onTap: () {},
          ),
          SimpleListTile(
            title: 'Corner radius',
            Desc: 'Select album cover corner radius',
            Ikon: Icons.rounded_corner_sharp,
            onTap: () {},
          ),
          SpecificSettingsContainer(
            title: 'CONTROLS',
            children: [
              VerticalSpacer(),
              ToggleListTile(
                title: 'Enables seek buttons',
                Desc:
                    'Replace skip buttons with seek buttons in now playing screen',
                Ikon: Icons.settings_ethernet,
                OnToggle: (bool value) {
                  this.setState(() {
                    seekbuttons = value;
                  });
                },
                CurrentToggleValue: seekbuttons,
              ),
              SimpleListTile(
                title: 'Change seek duration',
                Desc: 'Change the duration of seel buttons',
                Ikon: Icons.fast_forward_outlined,
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
