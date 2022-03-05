import 'package:flutter/material.dart';
import 'package:newpulsemusicapp/Widgets/Widgets.dart';

class Widgets extends StatelessWidget {
  const Widgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitle(
          title: 'Widgets',
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.grey),
        centerTitle: true,
      ),
      body: SpecificSettingsContainer(
        title: 'ACTION',
        children: [
          SimpleListTile(
            title: 'Backgroud alpha',
            Desc: "Adjust alpha value of widget's background",
            Ikon: Icons.invert_colors,
            onTap: () {},
          ),
          SpecificSettingsContainer(
            title: 'AUTO PLAY',
            children: [
              VerticalSpacer(),
              SimpleListTile(
                title: 'Action on play',
                Desc:
                    "Choose the action to perform when clicked on widgets play button",
                Ikon: Icons.play_circle_outline_sharp,
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
