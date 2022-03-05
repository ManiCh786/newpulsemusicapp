import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newpulsemusicapp/Widgets/Widgets.dart';

class GeneralSetting extends StatefulWidget {
  GeneralSetting({Key? key}) : super(key: key);

  @override
  _GeneralSettingState createState() => _GeneralSettingState();
}

class _GeneralSettingState extends State<GeneralSetting> {
  bool Artwork = false;
  bool Others = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitle(
          title: 'General',
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.grey),
        centerTitle: true,
      ),
      body: SpecificSettingsContainer(
        title: 'LOADER',
        children: [
          SimpleListTile(
            title: 'Select Ignored Folder',
            Desc:
                'Add or remove folders to exclude tracks for showing in library',
            Ikon: Icons.rule_folder,
            onTap: () {},
          ),
          SizedBox(height: 10),
          SimpleListTile(
            title: 'Duration filter',
            Desc: 'Filter tracks based on track duration',
            Ikon: Icons.filter_alt,
            onTap: () {},
          ),
          SpecificSettingsContainer(
            title: 'ARTWORK',
            children: [
              SizedBox(height: 10),
              ToggleListTile(
                  title: 'Ignore MediaStore artwork',
                  Desc:
                      'Use the artwork embedded in the audio file. May take more time to load',
                  Ikon: Icons.music_note,
                  OnToggle: (bool value) {
                    this.setState(() {
                      Artwork = value;
                    });
                  },
                  CurrentToggleValue: Artwork),
            ],
          ),
          SpecificSettingsContainer(
            title: 'Others',
            children: [
              VerticalSpacer(),
              ToggleListTile(
                  title: 'Remember playlist',
                  Desc:
                      'Playlist will be remebered, enables you to continue where you left',
                  Ikon: Icons.save,
                  OnToggle: (bool value) {
                    this.setState(() {
                      Others = value;
                    });
                  },
                  CurrentToggleValue: Others),
              SimpleListTile(
                title: 'Edit playlist section',
                Desc: "Select which playlist's to show in the home screen",
                Ikon: Icons.category,
                onTap: () {},
              ),
              SimpleListTile(
                title: 'Select default tab',
                Desc: 'Choose the tab to show when pulses music is started',
                Ikon: Icons.folder_open,
                onTap: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
