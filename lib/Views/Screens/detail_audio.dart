import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:musicapp/Models/song_model.dart';
import 'package:musicapp/Providers/music_provider.dart';
import 'package:provider/provider.dart';

class DetailAudio extends StatefulWidget {
  const DetailAudio({super.key});

  @override
  State<DetailAudio> createState() => _DetailAudioState();
}

class _DetailAudioState extends State<DetailAudio> {
  get Tss =>
      TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold);

  get Sts => TextStyle(color: Colors.white, fontSize: 16);

  @override
  Widget build(BuildContext context) {
    AudioModel audioModel = AudioModel();
    int index = ModalRoute.of(context)!.settings.arguments as int;
    var APF = Provider.of<MusicProvider>(context, listen: false);
    var APT = Provider.of<MusicProvider>(context);

    return Scaffold(
      backgroundColor: Colors.white24,
      appBar: AppBar(
        backgroundColor: Color(0xff444444),
        centerTitle: true,
        title: Text(
          "Now Playing",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(15),
            height: MediaQuery.sizeOf(context).height / 1.8,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              color: Color(0xff444445),
              boxShadow: [
                BoxShadow(color: Colors.white, blurRadius: 8),
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(
              "${audioModel.AllSongs[index]["SongImage"]}",
              fit: BoxFit.fill,
            ),
          ),
          ListTile(
            title: Text(
              "${audioModel.AllSongs[index]["Name"]}",
              style: Tss,
            ),
            subtitle:
                Text("${audioModel.AllSongs[index]["Artist"]}", style: Sts),
          ),
          Slider(
            inactiveColor: Colors.white,
            min: 0,
            max: audioModel.duration.inSeconds.toDouble(),
            value: audioModel.position.inSeconds.toDouble(),
            onChanged: (value) {
              APF.slider(value);
            },
          ),
          Container(
            padding: EdgeInsets.all(10),
            height: MediaQuery.sizeOf(context).height / 11,
            width: MediaQuery.sizeOf(context).width / 1.4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              // color: Colors.white24,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    APF.previussong();
                  },
                  icon: Icon(
                    size: 45,
                    color: Colors.white,
                    Icons.skip_previous_outlined,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    APF.PlayandPause();
                  },
                  icon: (APT.audioModel.ison == true)
                      ? Icon(
                          Icons.pause,
                          size: 45,
                          color: Colors.white,
                        )
                      : Icon(
                          color: Colors.white,
                          size: 45,
                          Icons.play_arrow,
                        ),
                ),
                IconButton(
                  onPressed: () {
                    APF.nextsong();
                  },
                  icon: Icon(
                    size: 45,
                    color: Colors.white,
                    Icons.skip_next_outlined,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Center(
//             child: Padding(
//               padding: const EdgeInsets.all(18.0),
//               child: CircleAvatar(
//                 radius: 150,
//                 backgroundImage:
//                     AssetImage("${audioModel.AllSongs[index]["SongImage"]}"),
//               ),
//             ),
//           ),

// Expanded(
//             child: Container(
//               margin: EdgeInsets.all(12),
//               padding: EdgeInsets.all(10),
//               height: MediaQuery.sizeOf(context).height,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 color: Colors.white24,
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text("${audioModel.AllSongs[index]["Name"]}", style: Tss),
//                 ],
//               ),
//             ),
//           )

//   Column(
//           // mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Center(
//               child: Padding(
//                 padding: const EdgeInsets.all(18.0),
//                 child: Container(
//                   clipBehavior: Clip.antiAlias,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                   ),
//                   child: CircleAvatar(
//                     radius: 100,
//                     child: Image.asset(
//                       height: 210,
//                       "${audioModel.AllSongs[index]["SongImage"]}",
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Container(
//                 width: 250,
//                 decoration: BoxDecoration(
//                   color: Color(0xff575757),
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     ElevatedButton(
//                       onPressed: () {
//                         APF.previussong();
//                       },
//                       child: Icon(
//                         Icons.skip_previous_outlined,
//                       ),
//                     ),
//                     ElevatedButton(
//                       onPressed: () {
//                         APF.pausesong();
//                       },
//                       child: Icon(Icons.pause),
//                     ),
//                     ElevatedButton(
//                       onPressed: () {
//                         APF.nextsong();
//                       },
//                       child: Icon(
//                         Icons.skip_next_outlined,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
