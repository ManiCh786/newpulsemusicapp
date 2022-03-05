import 'package:flutter/material.dart';
import 'package:newpulsemusicapp/Widgets/Widgets.dart';

class AudioScreen extends StatefulWidget {
  AudioScreen({Key? key}) : super(key: key);

  @override
  _AudioScreenState createState() => _AudioScreenState();
}

class _AudioScreenState extends State<AudioScreen> {
  bool bluetooth = false;

  bool sleeptime = false;

  bool repeatsleeptimer = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitle(
          title: 'Audio',
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.grey),
        centerTitle: true,
      ),
      body: SpecificSettingsContainer(
        title: 'AUTO PLAY',
        children: [
          ToggleListTile(
              title: 'Bluetooth auto play',
              Desc: 'Starts playing music when a bluetooth device connects',
              Ikon: Icons.bluetooth_connected_sharp,
              OnToggle: (bool value) {
                this.setState(() {
                  bluetooth = value;
                });
              },
              CurrentToggleValue: bluetooth),
          SizedBox(height: 10),
          SimpleListTile(
            title: 'Select bluetooth auto play actions',
            Desc: 'Choose which playlist to play using QS tile',
            Ikon: Icons.play_circle_outline_sharp,
            onTap: () {},
          ),
          SpecificSettingsContainer(
            title: 'SLEEP TIMER',
            children: [
              VerticalSpacer(),
              ToggleListTile(
                title: 'Enable sleep timer',
                Desc: 'Stops playback after the selected amount of time',
                Ikon: Icons.timer_rounded,
                OnToggle: (bool value) {
                  this.setState(() {
                    sleeptime = value;
                  });
                },
                CurrentToggleValue: sleeptime,
              ),
              SimpleListTile(
                title: 'Select timer duration',
                Desc: 'Choose the duration for sleep timer',
                Ikon: Icons.timer_rounded,
                onTap: () {},
              ),
              ToggleListTile(
                title: 'Repeat sleep timer',
                Desc:
                    'Starts the sleep timer automatically for the next playback session',
                Ikon: Icons.replay,
                OnToggle: (bool value) {
                  this.setState(() {
                    repeatsleeptimer = value;
                  });
                },
                CurrentToggleValue: repeatsleeptimer,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
