import 'dart:io';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:image_picker/image_picker.dart';

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  VideoPlayerController? videoPlayerController;

  void _recordVideo() async {
    _imagePicker
        .pickVideo(
            source: ImageSource.camera, maxDuration: Duration(seconds: 10))
        .then((recordedVideo) async {
      if (recordedVideo != null && recordedVideo.path != null) {
        //  _pickVideo=recordedVideo.;
        //  videoPath=recordedVideo.path;
        videoPlayerController =
            VideoPlayerController.file(File(recordedVideo.path))
              ..initialize().then((_) {
                setState(() {});
                videoPlayerController!.play(); //.pause() for pausing
                videoPlayerController!.setVolume(0.0);
              });
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Bar'),
      ),
      body: GestureDetector(
          onTap: _recordVideo,
          child: Container(
              height: 500,
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              child: (_imagePicker != null && videoPlayerController != null)
                  ? (videoPlayerController!.value.isInitialized
                      ? AspectRatio(
                          aspectRatio: videoPlayerController!.value.aspectRatio,
                          child: VideoPlayer(videoPlayerController!))
                      : Container())
                  : Text("Tap to record a video"))),
    );
  }
}

ImagePicker _imagePicker = ImagePicker();

class VideoRecording {
  File? _pickVideo;

  // final _pickVideo = _imagePicker.pickVideo(source: ImageSource.camera);

}
