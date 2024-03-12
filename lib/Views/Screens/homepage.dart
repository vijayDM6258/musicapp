import 'package:flutter/material.dart';
import 'package:musicapp/Models/song_model.dart';
import 'package:musicapp/Views/Screens/audio_page.dart';
import 'package:musicapp/Views/Screens/video_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> AllSongs = [];

  get Ts => TextStyle(
        color: Colors.white,
        fontSize: 17,
      );

  @override
  Widget build(BuildContext context) {
    AudioModel audioModel = AudioModel();
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff444444),
          title: Text(
            "MVPRO",
            style: TextStyle(fontSize: 22.5, color: Colors.white),
          ),
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text("Audios", style: Ts),
                icon: Icon(
                  Icons.audio_file,
                  color: Colors.white,
                ),
              ),
              Tab(
                icon: Icon(Icons.video_library_sharp, color: Colors.white),
                child: Text(
                  "Videos",
                  style: Ts,
                ),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Tab(
              child: AudioPage(),
            ),
            Tab(
              child: Video(),
            ),
          ],
        ),
      ),
    );
  }
}
