import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String videoURL = "https://www.youtube.com/watch?v=mqdPuKHO7ic";

  YoutubePlayerController _controller;

  @override
  void initState() {

    _controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(videoURL)
    );

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Youtube Player"),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[

              YoutubePlayer(
                controller: _controller,
                showVideoProgressIndicator: true,
              ),

            ],
          ),
        ),
      ),
    );
  }
}