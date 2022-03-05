import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:newpulsemusicapp/Widgets/Widgets.dart';

class SupportDevelopment extends StatelessWidget {
  const SupportDevelopment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitle(
          title: 'Support development',
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.grey),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20, right: 20, left: 10),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                children: [
                  Container(
                    // width: 230,
                    child: Text(
                      'Thank you for using Pulses Music',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  VerticalSpacer(),
                  Container(
                    width: 250,
                    child: Text(
                      'It takes a lot of time and efforts to deliver quality produts, that too for free',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  VerticalSpacer(),
                  Container(
                    width: 270,
                    child: Text(
                      'You can make a donation to support the development and help us improve the app, or just to show you appreciate our work.',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  VerticalSpacer(),
                  Container(
                    width: 250,
                    child: Text(
                      '5-star ratings and reviews are also  a way to support the project and development',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  VerticalSpacer(),
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  'Support us',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0, left: 8.0, top: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    child: TextButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Icon(
                            Icons.star_border_purple500_outlined,
                            size: 70,
                            color: Color(0xFF02C753),
                          ),
                          VerticalSpacer(
                            space: 30,
                          ),
                          Text(
                            'Rate us 5 star',
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF02C753),
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xFFD7F6E6),
                        minimumSize: Size(double.infinity, double.infinity),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    // color: Colors.orangeAccent.shade100,
                    child: TextButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Icon(
                            Icons.coffee_maker,
                            size: 70,
                            color: Color(0xFFFFAB00),
                          ),
                          VerticalSpacer(
                            space: 30,
                          ),
                          Text(
                            'Buy me cofee',
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
                            Radius.circular(20),
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
