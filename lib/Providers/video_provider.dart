import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:musicapp/Models/video_model.dart';
import 'package:video_player/video_player.dart';

class VideoProvider extends ChangeNotifier {
  VideoModel videoModel = VideoModel();

  void PlayVideo(int index) {
    videoModel.videoPlayerController =
        VideoPlayerController.asset(videoModel.Video[index]["Vp"])
          ..initialize();
    notifyListeners();
  }

  void Cc() {
    videoModel.chewieController = ChewieController(
        videoPlayerController: videoModel.videoPlayerController);
    notifyListeners();
  }
}
