import 'package:chewie/chewie.dart';
import 'package:chewie/src/chewie_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/src/cupertino_controls.dart';
//void main() {
//  runApp(
//    ChewieDemo(),
//  );
//}

class ChewieDemo extends StatefulWidget {
  ChewieDemo({Key key, this.id, this.title='Video',})  : super(key: key);
  final String title;
  final int id;
  @override
  State<StatefulWidget> createState() {
    return _ChewieDemoState();
  }
}

class _ChewieDemoState extends State<ChewieDemo> {
  TargetPlatform _platform;
  VideoPlayerController _videoPlayerController1;
  VideoPlayerController _videoPlayerController2;
  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _videoPlayerController1 = VideoPlayerController.network(
        'http://image.cqfee.top/IMAX_NEZHA.mp4');
    _videoPlayerController2 = VideoPlayerController.network(
        'http://baobab.kaiyanapp.com/api/v1/playUrl?vid=169011&resourceType=video&editionType=default&source=aliyun&playUrlType=url_oss');
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      aspectRatio: 3 / 2,
      autoPlay: true,
      looping: true,
      // Try playing around with some of these other options:

      // showControls: false,
         cupertinoProgressColors: ChewieProgressColors(
           playedColor: Colors.red,
           handleColor: Colors.blue,
           backgroundColor: Colors.grey,
           bufferedColor: Colors.lightGreen,
         ),
         // 控件背景色 颜色
         customControls: CupertinoControls(
           backgroundColor: Colors.deepPurple,
           iconColor: Colors.amberAccent,
         ),
//       materialProgressColors: ChewieProgressColors(
//         playedColor: Colors.red,
//         handleColor: Colors.blue,
//         backgroundColor: Colors.grey,
//         bufferedColor: Colors.lightGreen,
//       ),
       placeholder: Container(
         color: Colors.pinkAccent,
       ),
//       autoInitialize: true,
    );
  }

  @override
  void dispose() {
    _videoPlayerController1.dispose();
    _videoPlayerController2.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: widget.title,
      theme: ThemeData.light().copyWith(
        platform: _platform ?? Theme.of(context).platform, // 控制播放器样式是安卓的还是ios的
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('${widget.id}'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Center(
                child: Chewie(
                  controller: _chewieController,
                ),
              ),
            ),
            FlatButton(
              onPressed: () {
                _chewieController.enterFullScreen();
              },
              child: Text('全屏'),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        _chewieController.dispose(); // 先注销controller
                        _videoPlayerController2.pause(); // 暂停其它视频
                        _videoPlayerController2.seekTo(Duration(seconds: 0)); // 将下一个视频重置到0秒
                        _chewieController = ChewieController(
                          videoPlayerController: _videoPlayerController1,
                          aspectRatio: 16 / 9,
                          autoPlay: true,
                          looping: true,
//                          cupertinoProgressColors: ChewieProgressColors(
//                            playedColor: Colors.red,
//                            handleColor: Colors.blue,
//                            backgroundColor: Colors.grey,
//                            bufferedColor: Colors.lightGreen,
//                          ),
//                          placeholder: Container(
//                            color: Colors.grey,
//                          ),
//                          autoInitialize: true,
                        );
                      });
                    },
                    child: Padding(
                      child: Text("Video 1"),
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                    ),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        _chewieController.dispose();
                        _videoPlayerController1.pause();
                        _videoPlayerController1.seekTo(Duration(seconds: 0));
                        _chewieController = ChewieController(
                          videoPlayerController: _videoPlayerController2,
                          aspectRatio: 3 / 2,
                          autoPlay: true,
                          looping: true,
                        );
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: Text("Error Video"),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        _platform = TargetPlatform.android;
                      });
                    },
                    child: Padding(
                      child: Text("Android controls"),
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                    ),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        _platform = TargetPlatform.iOS;
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: Text("iOS controls"),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
