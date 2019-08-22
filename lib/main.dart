import 'package:custom_chewie/custom_chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(
    new ChewieDemo(),
  );
}

class ChewieDemo extends StatefulWidget {
  final String title;

  ChewieDemo({this.title = 'Chewie Demo'});

  @override
  State<StatefulWidget> createState() {
    return new _ChewieDemoState();
  }
}

class _ChewieDemoState extends State<ChewieDemo> {
  TargetPlatform _platform;
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new VideoPlayerController.network(
      'https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4',
    );
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: widget.title,
      theme: new ThemeData.light().copyWith(
        platform: _platform ?? Theme.of(context).platform,
      ),
      home: new Scaffold(
        body: new SafeArea(
          child: new Chewie(
            _controller,
            aspectRatio: 3 / 2,
            autoPlay: true,
            looping: false,
          ),
        )
        ),
    );
  }
}