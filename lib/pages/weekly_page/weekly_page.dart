import 'package:flutter/material.dart';
import 'dart:async';
import 'package:page_view/model/weekly.dart';
import 'package:page_view/utils/data_utils.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:transparent_image/transparent_image.dart';

class VideoArguments{
  final int id;
  VideoArguments({ this.id });
}

class WeeklyPage extends StatefulWidget {
  const WeeklyPage({Key key}) : super(key: key);
  @override
  _WeeklyPageState createState() => _WeeklyPageState();
}

class _WeeklyPageState extends State<WeeklyPage>
    with SingleTickerProviderStateMixin {
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  final List<Tab> tabList = <Tab>[
    Tab(text: '周排行'),
    Tab(text: '月排行'),
    Tab(text: '总排行'),
  ];

  List<Future> data = [];
  Future<Weekly> weekly;
  TabController _tabController;
  int _currentIndex = 0;
  void initState() {
    super.initState();
    weekly = DataUtils.getWeekly(0); // 获取周排行数据
    _tabController = TabController(length: tabList.length, vsync: this)
      ..addListener(() {
        if (_tabController.indexIsChanging) {
          this.setState(() {
            _currentIndex = _tabController.index;
            weekly = DataUtils.getWeekly(_currentIndex);
          });
        }
      });
  }

  void _onRefresh(RefreshController controller, Future<Weekly> data) async {
    //monitor fetch data from network
//    await Future.delayed(Duration(milliseconds: 1000));

    if (_currentIndex == 0) {
      data = DataUtils.getWeekly(_currentIndex);
    }
    if (mounted) setState(() {});
    controller.refreshCompleted();

    /*
        if(failed){
         _refreshController.refreshFailed();
        }
      */
  }

  void _onLoading(RefreshController controller, Future<Weekly> data) async {
    //monitor fetch data from network
//    await Future.delayed(Duration(milliseconds: 4000));
    data = DataUtils.getWeekly(_currentIndex);
//    pageIndex++;
    if (mounted) setState(() {});
    controller.loadComplete();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshConfiguration(
      headerBuilder: () => WaterDropMaterialHeader(
        backgroundColor: Colors.blueAccent,
      ),
      footerTriggerDistance: 80.0,
      child: Scaffold(
//      backgroundColor: Color(0xff232540),
        appBar: AppBar(
            title: Text('排行榜'),
            backgroundColor: Color(0xff232540),
            elevation: 5,
            bottom: TabBar(
              isScrollable: false,
              controller: _tabController,
              tabs: tabList,
              indicatorColor: Colors.pinkAccent,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorPadding: EdgeInsets.zero,
              indicatorWeight: 1,
              labelColor: Colors.white,
              labelPadding: EdgeInsets.symmetric(horizontal: 40, vertical: 0),
              labelStyle: TextStyle(color: Colors.pink, fontSize: 12),
              onTap: (int index) {
//              setState(() {
//                weekly = DataUtils.getWeekly(index);
//              });
              },
            )),
        body: TabBarView(
          controller: _tabController,
          children: tabList.map((index) {
            return FutureBuilder<Weekly>(
              future: weekly,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return smartRefresh(context, snapshot.data);
                } else if (snapshot.hasError) {
                  return Text("${snapshot.error}");
                }
                // By default, show a loading spinner.
                return Container();
              },
            );
          }).toList(),
        ),
      ),
    );
  }

  Widget smartRefresh(BuildContext context, Weekly data) {
    return SmartRefresher(
      child: getListView(context, data),
      controller: _refreshController,
      enablePullUp: true,
      header: WaterDropHeader(),
      onRefresh: () {
        _onRefresh(_refreshController, weekly);
      },
      onLoading: () {
        _onLoading(_refreshController, weekly);
      },
    );
  }

  Widget getListView(BuildContext context, Weekly data) {
    return ListView.builder(
        itemCount: data.count,
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        itemBuilder: (context, index) {
          var _item = data.itemList[index].data;
          var _minutes = _item.duration ~/ 60;
          var _seconds = _item.duration % 60;
          var _duration = _minutes.toString() + ':' + _seconds.toString();



          return InkWell(
            onTap: (){
              var _arguments = {
                'id': _item.id,
                'title': _item.title,
                'description': _item.description,
                'playUrl': _item.playUrl,
                'category': _item.category,
                'duration':_duration,
                'collectionCount': _item.consumption.collectionCount,
                'shareCount': _item.consumption.shareCount,
                'replyCount': _item.consumption.replyCount,
                'authorId': _item.author.id,
                'authorName': _item.author.name,
                'authorDescription': _item.author.description.split('\n')[0],
                'authorIcon': _item.author.icon,
                'blurredImg': _item.cover.blurred,
              };
              Navigator.pushNamed(context, '/video', arguments: _arguments);
//              Navigator.push<String>(context, MaterialPageRoute(builder: (BuildContext context){
//                return VideoPage(id:100);
//              }));
            },
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.only(bottom: 10),
              child: Column(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Stack(
                      children: <Widget>[
                        FadeInImage.memoryNetwork(
                            placeholder: kTransparentImage,
                            image: _item.cover.feed),
                        Positioned(
                          bottom: 10,
                          right: 10,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 2, vertical: 0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                shape: BoxShape.rectangle,
                                color: Colors.black.withOpacity(0.7)),
                            child: Text(
                              _duration,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 46,
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      children: <Widget>[
                        ClipOval(
                          child: Image.network(_item.author.icon),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  _item.title,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                                RichText(
                                  text: TextSpan(
                                      text: _item.author.name,
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 13),
                                      children: <TextSpan>[
                                        TextSpan(text: ' / '),
                                        TextSpan(
                                          text: '#' + _item.category,
                                        ),
                                      ]),
                                ),
                              ],
                            ),
                          ),
                        ),
//                        Spacer(),
                        Icon(
                          Icons.share,
                          color: Colors.blueAccent,
                          size: 20,
                        ),
                        SizedBox(
                          width: 5,
                        )
                      ],
                    ),
                  ),
                  Divider(
                    height: 1,
                    color: Colors.grey.withOpacity(0.1),
                  )
                ],
              ),
            ),
          );
        });
  }
}
