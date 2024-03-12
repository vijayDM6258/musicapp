import 'package:assets_audio_player/assets_audio_player.dart';

class AudioModel {
  bool issecure = true;
  bool ison = false;
  bool isvolume = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;
  List<Map<String, dynamic>> AllSongs = [
    {
      "Name": "hamare raghunath",
      "song": "assets/songs/raghunathji.mp3",
      "SongImage": "assets/images/ram.jpg",
      "Artist": " Prembhushan Ji Maharaj ",
    },
    {
      "Name": "I wanna be Yours",
      "song": "assets/songs/beyours.mp3",
      "SongImage": "assets/images/harleys.jpg",
      "Artist": "John Cooper Clarke",
    },
    {
      "Name": "Industry Baby ",
      "song": "assets/songs/industry.mp3",
      "SongImage": "assets/images/industry.jpg",
      "Artist": "Jack Harlow",
    },
    {
      "Name": "The Box",
      "song": "assets/songs/thebox.mp3",
      "SongImage": "assets/images/thebox.jpg",
      "Artist": "Roddy Rich",
    },
    {
      "Name": "teri yaddein",
      "song": "assets/songs/teriyadein.mp3",
      "SongImage": "assets/images/kk.jpg",
      "Artist": "K K sanu",
    },
    {
      "Name": "Bum tum",
      "song": "assets/songs/bumtum.mp3",
      "SongImage": "assets/images/bumtumtum.jpg",
      "Artist": "Roddy Rich",
    },
    {
      "Name": "Kuley Kuley",
      "song": "assets/songs/kuley.mp3",
      "SongImage": "assets/images/kuley.jpg",
      "Artist": "yo yo honey singh ",
    },
  ];
  AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();
}
