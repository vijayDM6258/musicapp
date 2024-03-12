import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

class VideoModel {
  late VideoPlayerController videoPlayerController;

  late ChewieController chewieController;

  List<Map<String, dynamic>> Video = [
    {
      "Name": "car",
      "Vp": "assets/videos/car.mp4",
      "imgpath": "assets/images/Cars.jpg",
    },
    {
      "Name": "Ram",
      "Vp": "assets/videos/ram.mp4",
      "imgpath": "assets/images/ram.jpeg",
    },
    {
      "Name": "Shree ram",
      "Vp": "assets/videos/ram1.mp4",
      "imgpath": "assets/images/hanuman.jpeg",
    },
    {
      "Name": "Vibes",
      "Vp": "assets/videos/vibes.mp4",
      "imgpath": "assets/images/sad.jpeg",
    },
    {
      "Name": "19 Era",
      "Vp": "assets/videos/ig.mp4",
      "imgpath": "assets/images/bepnah.jpeg",
    },
    {
      "Name": "success thought",
      "Vp": "assets/videos/ig2.mp4",
      "imgpath": "assets/images/money.jpeg",
    },{
      "Name": "Saiyan",
      "Vp": "assets/videos/saiyan.mp4",
      "imgpath": "assets/images/saiyan.png",
    },
  ];
}
