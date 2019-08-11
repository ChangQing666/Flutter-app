import 'package:chewie/chewie.dart';
import 'package:chewie/src/chewie_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_view/pages/weekly_page/weekly_page.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/src/cupertino_controls.dart';

class VideoPage extends StatefulWidget {
  VideoPage({Key key, this.id, this.title='Video', @required this.params})  : super(key: key);
  final String title;
  final int id;
  final int params;
  @override
  State<StatefulWidget> createState() {
    return _VideoPageState();
  }
}

class _VideoPageState extends State<VideoPage> {
  TargetPlatform _platform;
  VideoPlayerController _videoPlayerController;
  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.network(
        'http://image.cqfee.top/IMAX_NEZHA.mp4');
     _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
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
      placeholder: Container(
        color: Colors.pinkAccent,
      ),
       autoInitialize: true,
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
//    final VideoArguments _arguments = ModalRoute.of(context).settings.arguments; // 获取上个路由传过来的参数
    return MaterialApp(
      title: widget.title,
      theme: ThemeData.light().copyWith(
        platform: _platform ?? Theme.of(context).platform, // 控制播放器样式是安卓的还是ios的
      ),
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              height:50,
              color:Colors.black
            ),
            Chewie(
              controller: _chewieController,
            ),
            FlatButton(
              onPressed: () {
                _chewieController.enterFullScreen();
              },
              child: Text('全屏${widget.params}'),
            ),
          ],
        ),
      ),
    );
  }
}
