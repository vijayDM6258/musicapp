import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:musicapp/Models/song_model.dart';

class MusicProvider extends ChangeNotifier {
  AudioModel audioModel = AudioModel();
  bool play = false;
  bool IsIcon = false;

  void Play() {
    play != play;
    notifyListeners();
  }

  void IconChange() {
    IsIcon != IsIcon;
    notifyListeners();
  }

  void playsongs(int index) {
    audioModel.assetsAudioPlayer.open(
      Audio(
        audioModel.AllSongs[index]['song'],
      ),
    );
    notifyListeners();
  }

  void pausesong() {
    audioModel.assetsAudioPlayer.pause();
    notifyListeners();
  }

  void nextsong() {
    audioModel.assetsAudioPlayer.next();
    notifyListeners();
  }

  void previussong() {
    audioModel.assetsAudioPlayer.previous();
    notifyListeners();
  }

  void PlayandPause() {
    audioModel.ison = !audioModel.ison;
    audioModel.assetsAudioPlayer.playOrPause();
    notifyListeners();
  }

  void slider(double value) {
    final position = Duration(
      seconds: value.toInt(),
    );
    audioModel.assetsAudioPlayer.seek(position);
    notifyListeners();
  }
}
