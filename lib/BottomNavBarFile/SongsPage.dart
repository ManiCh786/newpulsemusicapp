import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newpulsemusicapp/Controller/MusicController.dart';

class SongsPage extends StatefulWidget {
  SongsPage({Key? key}) : super(key: key);
  @override
  State<SongsPage> createState() => _SongsPageState();
}

class _SongsPageState extends State<SongsPage> {
  final ScrollController _controller = ScrollController();
  final Directory internalStorageDirectory =
      Directory('/storage/emulated/0/Download');

  bool isPlaying = false;
  late final List<FileSystemEntity> songsList;

  List<FileSystemEntity> fetchAllSystemFiles() {
    return internalStorageDirectory.listSync(
        recursive: true, followLinks: true);
  }

  List<FileSystemEntity> fetchFilesOfType({String extension = '.mp3'}) {
    List<FileSystemEntity> _files = [];
    for (FileSystemEntity entity in fetchAllSystemFiles()) {
      String path = entity.path;
      if (path.endsWith(extension)) _files.add(entity);
    }
    return _files;
  }

  @override
  void initState() {
    super.initState();
    this.songsList = this.fetchFilesOfType(extension: '.mp3');
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: Get.height,
        child: Scrollbar(
          controller: _controller,
          thickness: 10,
          radius: Radius.circular(6),
          showTrackOnHover: true,
          child: ListView.builder(
            itemCount: songsList.length,
            itemBuilder: (context, index) {
              {
                var song = songsList.elementAt(index);
                var songName =
                    song.path.substring(song.path.lastIndexOf('/') + 1);
                return ListTile(
                  onTap: () async {
                    var controller = Get.find<CurrentMusicController>();
                    controller.selectNewSong();
                    controller.playNewSong(songName, song.path);
                  },
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.more_vert),
                  ),
                  title: Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey.shade200),
                        child: Icon(
                          Icons.music_note_outlined,
                          color: Colors.deepPurpleAccent,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
