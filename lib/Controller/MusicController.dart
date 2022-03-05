import 'dart:async';

import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';
import 'package:newpulsemusicapp/Model/MusicControllerModel.dart';

class CurrentMusicController extends GetxController {
  CurrentMusicModel? currentMusic;
  bool isSongSlected = false;
  bool isMusicPlaying = true;
  final audioPlayer = AudioPlayer();

  Timer? currentSongTimer;

  selectNewSong() {
    if (this.isSongSlected == false) {
      this.isSongSlected = true;
      update();
    }
  }

  playNewSong(title, path) async {
    if (currentSongTimer != null) currentSongTimer!.cancel();
    if (this.isMusicPlaying) audioPlayer.stop();
    var duration = await audioPlayer.setFilePath(path);
    currentMusic = CurrentMusicModel(title, path, duration!);
    currentSongTimer = _songTimer();
    audioPlayer.play();
    this.isMusicPlaying = true;
    update();
  }

  Timer _songTimer() {
    return Timer.periodic(Duration(seconds: 1), (timer) {
      if (timer.tick == currentMusic!.duration.inSeconds) {
        timer.cancel();
      }
      update();
    });
  }

  onPlayPausePressed() {
    if (this.isMusicPlaying) {
      audioPlayer.stop();
      currentSongTimer!.cancel();
    } else {
      audioPlayer.play();
      currentSongTimer = _songTimer();
    }

    this.isMusicPlaying = !this.isMusicPlaying;
    update();
  }

  int? get currentSongMaxSeconds {
    if (currentMusic != null) return this.currentMusic!.duration.inSeconds % 60;
    return 0;
  }

  int get currentSongMaxMinutes {
    if (currentMusic != null) return this.currentMusic!.duration.inMinutes;
    return 0;
  }

  int get currentPossitionOfSong {
    return audioPlayer.position.inSeconds;
  }

  String get currentSongMaximumTime {
    return '${FormattedTime(currentSongMaxMinutes)}:${FormattedTime(currentSongMaxSeconds)}';
  }

  String FormattedTime(value) {
    if (value < 10) return '0${value}';
    return '${value}';
  }

  String get currentSongCurrentTime {
    int sec = (audioPlayer.position.inSeconds) % 60;
    int min = (audioPlayer.position.inSeconds / 60).toInt();
    return '${FormattedTime(min)}:${FormattedTime(sec)}';
  }

  void set currentPossitionOfSong(int value) {
    audioPlayer.seek(Duration(seconds: value));
  }
}
