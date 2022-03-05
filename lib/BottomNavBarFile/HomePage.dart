import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:newpulsemusicapp/Widgets/AppSpacers.dart';

import '../Widgets/AppSpacers.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Buttons Starts Here
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FRTSButtons(
                onTap: () {
                  print('Favorites Pressed');
                },
                title: 'Favorites',
                icon: Icons.favorite,
                foregroundColor: Colors.red,
                backgroundColor: Colors.pink.shade100,
                SplashColor: Colors.red,
              ),
              FRTSButtons(
                onTap: () {
                  print('Recent Pressed');
                },
                title: 'Recent',
                icon: Icons.access_time,
                foregroundColor: Colors.amber.shade600,
                backgroundColor: Colors.amber.shade100,
                SplashColor: Colors.amber,
              ),
            ],
          ),

          VerticalSpacer(space: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FRTSButtons(
                onTap: () {
                  print('Track Pickker Pressed');
                },
                title: 'Track picker',
                icon: Icons.folder_open,
                foregroundColor: Colors.blue.shade800,
                backgroundColor: Colors.lightBlue.shade100,
                SplashColor: Colors.black,
              ),
              FRTSButtons(
                onTap: () {
                  print('Shuffle Pressed');
                },
                title: 'Shuffle',
                icon: Icons.shuffle,
                foregroundColor: Colors.green.shade800,
                backgroundColor: Colors.green.shade100,
                SplashColor: Colors.green,
              ),
            ],
          ),
          //  Buttons Ends Here
          //For You Starts Here
          Container(
            child: Row(
              children: [
                // HorizontalSpacer(space: 12),
                VerticalSpacer(space: 100),
                Text(
                  'For You',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          //  ForYou Ends here
          //New In Stores Starts Here

          Container(
            child: Row(
              children: [
                // HorizontalSpacer(space: 12),
                VerticalSpacer(space: 100),
                Text(
                  'New In Stores',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    // New In Store Ends Here
  }
}

class FRTSButtons extends StatelessWidget {
  const FRTSButtons(
      {Key? key,
      required this.icon,
      required this.foregroundColor,
      required this.backgroundColor,
      required this.onTap,
      required this.title,
      required this.SplashColor})
      : super(key: key);

  final IconData icon;
  final String title;
  final Color foregroundColor;
  final Color backgroundColor;
  final Color SplashColor;
  final Callback onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Row(
        children: [
          HorizontalSpacer(space: 12),
          Icon(
            this.icon,
            color: this.foregroundColor,
            size: 19,
          ),
          HorizontalSpacer(space: 12),
          Text(
            this.title,
            style: TextStyle(
                color: this.foregroundColor, fontWeight: FontWeight.w500),
          ),
        ],
      ),
      style: TextButton.styleFrom(
        backgroundColor: this.backgroundColor,
        minimumSize: Size(150, 45),
        alignment: Alignment.centerLeft,
        primary: this.SplashColor,
      ),
    );
  }
}
