import 'package:chewie/chewie.dart';
import 'package:chewie/src/chewie_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_view/pages/weekly_page/weekly_page.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/src/cupertino_controls.dart';

class VideoPage extends StatefulWidget {
  VideoPage({Key key, this.id, this.title = 'Video', @required this.params})
      : super(key: key);
  final String title;
  final int id;
  final Map<String, dynamic> params;
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
    _videoPlayerController =
        VideoPlayerController.network(this.widget.params['playUrl']);
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      aspectRatio: 3 / 2,
      autoPlay: true,
      looping: false,
      // Try playing around with some of these other options:

      // showControls: false,
      cupertinoProgressColors: ChewieProgressColors(
//        playedColor: Colors.red,
//        handleColor: Colors.blue,
//        backgroundColor: Colors.grey,
//        bufferedColor: Colors.lightGreen,
          ),
      // 控件背景色 颜色
      customControls: CupertinoControls(
//        backgroundColor: Colors.black,
//        iconColor: Colors.white,
          ),
      placeholder: Container(
//        color: Colors.pinkAccent,
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(height: 50, color: Colors.black),
            Chewie(
              controller: _chewieController,
            ),
//            FlatButton(
//              onPressed: () {
//                _chewieController.enterFullScreen();
//              },
//              child: Text('全屏${widget.params["title"]}'),
//            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.8),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(widget.params['blurredImg']))),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        widget.params['title'],
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      RichText(
                        text: TextSpan(
                            text: '#' + widget.params['category'],
                            style: TextStyle(color: Colors.white, fontSize: 16),
                            children: <TextSpan>[
                              TextSpan(text: ' / '),
                              TextSpan(
                                text: widget.params['duration'],
                              ),
                              TextSpan(text: ' / '),
                              TextSpan(
                                text: '开眼精选',
                              ),
                            ]),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        widget.params['description'],
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.beach_access,
                            size: 20,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(widget.params['collectionCount'].toString(),
                              style: TextStyle(color: Colors.white)),
                          SizedBox(
                            width: 18,
                          ),
                          Icon(
                            Icons.file_upload,
                            size: 20,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(widget.params['shareCount'].toString(),
                              style: TextStyle(color: Colors.white)),
                          SizedBox(
                            width: 18,
                          ),
                          Icon(
                            Icons.comment,
                            size: 20,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(widget.params['replyCount'].toString(),
                              style: TextStyle(color: Colors.white)),
                          SizedBox(
                            width: 18,
                          ),
                          Icon(
                            Icons.file_download,
                            size: 20,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('缓存', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Divider(
                        color: Colors.white,
                        height: 0.5,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 60,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            ClipOval(
                              child: Image.network(widget.params['authorIcon']),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 200,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(widget.params['authorName'],
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white)),
                                  RichText(
                                    overflow: TextOverflow.ellipsis,
                                      text: TextSpan(text: '', children: [
                                    TextSpan(
                                        text: widget.params['authorDescription'],
                                        style: TextStyle(color: Colors.white)),
                                  ])),
                                ],
                              ),
                            ),
                            Spacer(),
                            FlatButton(
                              onPressed: () => {},
                              color: Colors.white,
                              child: Text('关注',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.pinkAccent)),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Divider(color: Colors.white,),

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
