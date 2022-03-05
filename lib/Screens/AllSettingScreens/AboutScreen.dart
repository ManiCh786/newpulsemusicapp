import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:newpulsemusicapp/Widgets/Widgets.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitle(
          title: 'About',
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.grey),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12, top: 20, right: 8),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey.shade200,
                ),
                width: double.infinity,
                height: 170,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 12, left: 12, top: 20, bottom: 20),
                      child: Column(
                        children: [
                          CircleAvatar(
                            minRadius: 40,
                            backgroundColor: Colors.white,
                            child: Image.asset(
                              "assets/Image/playstore.png",
                              width: 40,
                              height: 40,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20, left: 30),
                              child: Column(
                                children: [
                                  Text(
                                    'App version',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                        fontSize: 18),
                                  ),
                                  VerticalSpacer(),
                                  Text(
                                    '4.3.2 (3121313)',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20, left: 30),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Build date',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                        fontSize: 18),
                                  ),
                                  VerticalSpacer(),
                                  Text(
                                    'Sat, 12 Aug 2021,',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                  ),
                                  VerticalSpacer(),
                                  Text(
                                    '01:19:10 P:M',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            VerticalSpacer(),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 8),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey.shade200,
                ),
                width: double.infinity,
                height: 300,
                child: Column(
                  children: [
                    VerticalSpacer(
                      space: 5,
                    ),
                    CircleAvatar(
                      minRadius: 40,
                      backgroundColor: Colors.white,
                      child: Image.asset(
                        "assets/Image/playstore.png",
                        width: 40,
                        height: 40,
                      ),
                    ),
                    VerticalSpacer(
                      space: 18,
                    ),
                    Text(
                      'Designed and developed by',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                    VerticalSpacer(
                      space: 14,
                    ),
                    Text(
                      'Abdur Rehman',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    VerticalSpacer(
                      space: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  shape: CircleBorder(),
                                  backgroundColor: Color(0xFFDEEAFF),
                                  // minimumSize: Size(70, 70),
                                ),
                                child: Icon(
                                  EvaIcons.githubOutline,
                                  color: Color(0xFF5593F8),
                                  size: 35,
                                ),
                              ),
                              VerticalSpacer(),
                              Text('Github'),
                            ],
                          ),
                          Column(
                            children: [
                              TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  shape: CircleBorder(),
                                  backgroundColor: Color(0xFFD8F5F1),
                                  // minimumSize: Size(70, 70),
                                ),
                                child: Icon(
                                  EvaIcons.twitterOutline,
                                  color: Color(0xFF0AB9A2),
                                  size: 35,
                                ),
                              ),
                              VerticalSpacer(),
                              Text('Twitter'),
                            ],
                          ),
                          Column(
                            children: [
                              TextButton(
                                onPressed: () {
                                  // launch => ('https://en-gb.facebook.com/');
                                },
                                style: TextButton.styleFrom(
                                  shape: CircleBorder(),
                                  backgroundColor: Colors.blue,
                                  // minimumSize: Size(70, 70),
                                ),
                                child: Icon(
                                  EvaIcons.facebookOutline,
                                  color: Colors.white,
                                  size: 35,
                                ),
                              ),
                              VerticalSpacer(),
                              Text(
                                'Facebook',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            VerticalSpacer(),
            Row(
              children: [
                HorizontalSpacer(),
                Text(
                  'Social Links',
                  style: TextStyle(
                    color: Colors.purple,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 165,
                    height: 160,
                    // color: Colors.orangeAccent.shade100,
                    child: TextButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/Image/web.png',
                            width: 80,
                            height: 80,
                          ),
                          VerticalSpacer(
                            space: 30,
                          ),
                          Text(
                            'Website',
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFFFFAB00),
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xFFFFF2D8),
                        minimumSize: Size(double.infinity, double.infinity),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 165,
                    height: 160,
                    // color: Colors.orangeAccent.shade100,
                    child: TextButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Icon(
                            Icons.translate,
                            size: 70,
                            color: Colors.red,
                          ),
                          VerticalSpacer(
                            space: 30,
                          ),
                          Text(
                            'Translate',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.red,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.red.shade100,
                        minimumSize: Size(double.infinity, double.infinity),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
