import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playground_project/widget/arrayUtils.dart';
import 'package:playground_project/widget/videoPlayer.dart';

void main() {
  runApp(
    MainApp()

    // ChewieDemo(
    //   url: 'https://agoralesson.s3-ap-southeast-1.amazonaws.com/files/uploads/agora/f8f3cc71-077f-4f13-be3f-a78d5364df7e--preview.mp4',
    // ),
  );
}

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Playground',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Playground'),
        ),
        body: ArrayUtils()
      ),
    );
  }
}
