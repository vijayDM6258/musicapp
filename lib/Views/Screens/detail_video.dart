import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Models/video_model.dart';
import '../../Providers/video_provider.dart';

class VideoDetails extends StatefulWidget {
  const VideoDetails({super.key});

  @override
  State<VideoDetails> createState() => _VideoDetailsState();
}

class _VideoDetailsState extends State<VideoDetails> {
  @override
  Widget build(BuildContext context) {
    VideoModel videoModel = VideoModel();
    int index = ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff444444),
        centerTitle: true,
        title: Text(
          videoModel.Video[index]['Name'],
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: AspectRatio(
          aspectRatio: Provider.of<VideoProvider>(context)
              .videoModel
              .videoPlayerController
              .value
              .aspectRatio,
          child: Chewie(
              controller: Provider.of<VideoProvider>(context)
                  .videoModel
                  .chewieController),
        ),
      ),
    );
  }
}
