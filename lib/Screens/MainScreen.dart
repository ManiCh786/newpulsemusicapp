import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marquee_widget/marquee_widget.dart';
import 'package:newpulsemusicapp/Controller/MusicController.dart';
import 'package:newpulsemusicapp/Screens/SearchScreen.dart';
import 'package:newpulsemusicapp/Widgets/MainMenuBottomSheet.dart';
import 'package:newpulsemusicapp/Widgets/Widgets.dart';
import 'package:newpulsemusicapp/Widgets/debouncer.dart';
import 'package:we_slide/we_slide.dart';

import '../BottomNavBarFile/BottomNavBarFile.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  Debouncer seekDebouncer = Debouncer(milliseconds: 0);
  var screens = [
    HomePage(),
    AlbumPage(),
    SongsPage(),
    PlaylistPage(),
    ArtistPage(),
  ];

  var currentMusic = Get.put<CurrentMusicController>(
    CurrentMusicController(),
    permanent: true,
  );
  final WeSlideController _controller = WeSlideController();
  @override
  Widget build(BuildContext context) {
    final double _panelMinSize = 127.0;
    final double panelMaxSize = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: GetBuilder<CurrentMusicController>(builder: (controller) {
          return WeSlide(
            isDismissible: true,
            parallax: true,
            controller: _controller,
            backgroundColor: Colors.white,
            panelMinSize: controller.isSongSlected ? _panelMinSize : 0.0,
            panelMaxSize: panelMaxSize,
            panelHeader: !controller.isSongSlected
                ? Container()
                : Container(
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    height: 71,
                    child: Row(
                      children: [
                        Expanded(
                          child: Marquee(
                            child: Text(controller.currentMusic == null
                                ? ''
                                : controller.currentMusic!.title),
                            autoRepeat: true,
                            pauseDuration: Duration(milliseconds: 1000),
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                        Container(
                          width: 150,
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.skip_previous,
                                ),
                              ),
                              IconButton(
                                onPressed: controller.onPlayPausePressed,
                                icon: Icon(
                                  controller.isMusicPlaying
                                      ? Icons.pause
                                      : Icons.play_arrow,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.skip_next),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
            footer: AppBottomNavBar(
              onTap: (index) {
                this.setState(
                  () {
                    currentIndex = index;
                  },
                );
              },
              currentIndex: currentIndex,
            ),
            hideFooter: true,
            panel: !controller.isSongSlected
                ? Container()
                : Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                onPressed: () {
                                  _controller.hide();
                                },
                                icon: Icon(
                                  Icons.keyboard_arrow_down,
                                  size: 32,
                                ),
                              ),
                              Text(
                                "Now Playing",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.favorite_border),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.more_vert,
                                      size: 28,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 25),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey.shade100,
                            ),
                            height: 350,
                            width: double.infinity,
                            child: Icon(
                              Icons.music_note,
                              color: Colors.deepPurpleAccent,
                              size: 200,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 15),
                          child: Marquee(
                            child: Text(controller.currentMusic == null
                                ? ''
                                : controller.currentMusic!.title),
                            autoRepeat: true,
                            pauseDuration: Duration(milliseconds: 100),
                            animationDuration: Duration(seconds: 10),
                            directionMarguee: DirectionMarguee.oneDirection,
                          ),
                        ),
                        StreamBuilder<Duration>(
                            stream: controller.audioPlayer.positionStream,
                            builder: (context, snapshot) {
                              // print('Duration: ${snapshot.data!.inSeconds}');
                              return Slider(
                                activeColor: Colors.deepPurpleAccent,
                                min: 0,
                                max: (controller.currentMusic != null
                                        ? controller
                                            .currentMusic!.duration.inSeconds
                                        : 0)
                                    .toDouble(),
                                value: controller.currentPossitionOfSong
                                    .toDouble(),
                                onChanged: (value) {
                                  seekDebouncer.run(() {
                                    controller.currentPossitionOfSong =
                                        value.toInt();
                                  });
                                },
                              );
                            }),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(controller.currentSongCurrentTime),
                              Text(controller.currentSongMaximumTime),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.repeat),
                                iconSize: 30,
                                splashColor: Colors.lightBlueAccent,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.skip_previous),
                                iconSize: 35,
                              ),
                              IconButton(
                                onPressed: controller.onPlayPausePressed,
                                icon: Icon(controller.isMusicPlaying
                                    ? Icons.pause_circle
                                    : Icons.play_circle_outline_sharp),
                                iconSize: 70,
                                color: Colors.deepPurpleAccent,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.skip_next),
                                iconSize: 35,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.shuffle),
                                iconSize: 30,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
            body: CustomScrollView(
              slivers: [
                AppBarDynamic(
                  Title: '${screens[currentIndex]}',
                ),
                SliverToBoxAdapter(
                  child: screens[currentIndex],
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}

class AppBarDynamic extends StatelessWidget {
  const AppBarDynamic({Key? key, required this.Title}) : super(key: key);

  final String Title;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      title: AppBarTitle(
        title: Title,
      ),
      centerTitle: true,
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          color: Colors.grey.shade700,
        ),
        onPressed: () {
          Get.bottomSheet(MainMenuScreenBottomSheet());
        },
      ),
      actions: [
        IconButton(
          onPressed: () {
            Get.to(
              AppSearchScreen(),
              transition: Transition.cupertino,
            );
          },
          icon: Icon(
            Icons.search,
            color: Colors.grey.shade700,
          ),
        ),
      ],
    );
  }
}
