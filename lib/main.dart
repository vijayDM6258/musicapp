import 'package:flutter/material.dart';
import 'package:musicapp/Providers/music_provider.dart';
import 'package:musicapp/Providers/video_provider.dart';
import 'package:musicapp/Views/Screens/audio_page.dart';
import 'package:musicapp/Views/Screens/detail_audio.dart';
import 'package:musicapp/Views/Screens/video_page.dart';
import 'package:provider/provider.dart';

import 'Views/Screens/detail_video.dart';
import 'Views/Screens/homepage.dart';

void main() {
  runApp(MusicApp());
}

class MusicApp extends StatefulWidget {
  const MusicApp({super.key});

  @override
  State<MusicApp> createState() => _MusicAppState();
}

class _MusicAppState extends State<MusicApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MusicProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => VideoProvider(),
        ),
      ],
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "own musics",
        // home: HomePage(),

        initialRoute: "/",
        routes: {
          "/": (context) => HomePage(),
          "AudioPage": (context) => AudioPage(),
          "AudioDetails": (context) => DetailAudio(),
          "videoPage": (context) => Video(),
          "VideoDetails": (context) => VideoDetails(),
        },
      ),
    );
  }
}
