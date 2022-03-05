import 'package:flutter/material.dart';
import 'package:newpulsemusicapp/Widgets/Widgets.dart';

class ThemeScreen extends StatefulWidget {
  ThemeScreen({Key? key}) : super(key: key);

  @override
  _ThemeScreenState createState() => _ThemeScreenState();
}

class _ThemeScreenState extends State<ThemeScreen> {
  bool darktheme = false;

  bool systemtheme = false;
  bool SoftenColor = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitle(
          title: 'Theme',
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.grey),
        centerTitle: true,
      ),
      body: SpecificSettingsContainer(
        title: 'THEME',
        children: [
          VerticalSpacer(),
          SimpleListTile(
            title: 'Select dark theme',
            Desc: 'Choose the dark theme to use when dark mode is enabled',
            Ikon: Icons.color_lens_outlined,
            onTap: () {},
          ),
          ToggleListTile(
            title: 'Turn on dark mode',
            Desc: 'Instantly enables preferred dark theme',
            Ikon: Icons.mode_night,
            OnToggle: (bool value) {
              this.setState(() {
                darktheme = value;
              });
            },
            CurrentToggleValue: darktheme,
          ),
          ToggleListTile(
              title: 'Follow system theme',
              Desc: 'Sets light and preferred dark theme based on system theme',
              Ikon: Icons.lightbulb,
              OnToggle: (bool value) {
                this.setState(() {
                  systemtheme = value;
                });
              },
              CurrentToggleValue: systemtheme),
          SpecificSettingsContainer(
            title: 'COLORS',
            children: [
              ToggleListTile(
                  title: 'Soften accent color',
                  Desc: 'Make accent color desaturated when dark them applied',
                  Ikon: Icons.invert_colors,
                  OnToggle: (bool value) {
                    this.setState(() {
                      SoftenColor = value;
                    });
                  },
                  CurrentToggleValue: SoftenColor),
              SimpleListTile(
                title: 'Pick accent color',
                Desc: 'Select accent colors to apply',
                Ikon: Icons.colorize,
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
