import 'package:flutter/material.dart';
import 'package:musicapp/Models/video_model.dart';
import 'package:provider/provider.dart';

import '../../Providers/video_provider.dart';

class Video extends StatefulWidget {
  const Video({super.key});

  @override
  State<Video> createState() => _VideoState();
}

class _VideoState extends State<Video> {
  @override
  Widget build(BuildContext context) {
    VideoModel videoModel = VideoModel();
    return Scaffold(
      backgroundColor: Color(0xff444444),
      body: ListView.builder(
        itemCount: videoModel.Video.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'VideoDetails', arguments: index);
              Provider.of<VideoProvider>(context, listen: false)
                  .PlayVideo(index);
              Provider.of<VideoProvider>(context, listen: false).Cc();
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                // margin: EdgeInsets.all(6),
                height: 300,
                width: double.infinity,
                child: Container(
                  child: Image.asset(
                    videoModel.Video[index]['imgpath'],
                    fit: BoxFit.values[index],
                  ),
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
