import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';
import 'package:page_view/model/weekly.dart';
import 'package:page_view/utils/data_utils.dart';

class WeeklyPage extends StatefulWidget {
  const WeeklyPage({Key key}) : super(key: key);
  @override
  _WeeklyPageState createState() => _WeeklyPageState();
}

class _WeeklyPageState extends State<WeeklyPage>
    with SingleTickerProviderStateMixin {
  final List<Tab> tabList = <Tab>[
    Tab(text: '周排行'),
    Tab(text: '月排行'),
    Tab(text: '总排行'),
  ];

  Future<Weekly> weekly;
  TabController _tabController;
  void initState() {
    super.initState();
    weekly = DataUtils.getWeekly(); // 获取周排行数据
    _tabController = TabController(length: tabList.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      backgroundColor: Color(0xff232540),
      appBar: AppBar(
          title: Text('排行榜'),
          backgroundColor: Color(0xff232540),
          elevation: 10,
          bottom: TabBar(
            isScrollable: true,
            controller: _tabController,
            tabs: tabList,
            indicatorColor: Colors.pinkAccent,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorPadding: EdgeInsets.zero,
            indicatorWeight: 1,
            labelColor: Colors.white,
          )),
      body: Center(
        child: FutureBuilder<Weekly>(
          future: weekly,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return getListView(context, snapshot.data);
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            // By default, show a loading spinner.
            return CircularProgressIndicator();
          },
        ),
      ),
//      body: TabBarView(
//        controller: _tabController,
//        children: tabList.map((Tab tab) {
//          final String label = tab.text.toLowerCase();
//          return Center(
//            child: Text(
//              'This is the $label tab',
//              style: const TextStyle(fontSize: 36),
//            ),
//          );
//        }).toList(),
//      ),
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
            onTap: () => Navigator.pushNamed(context, '/video'),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.only(bottom: 10),
              child: Column(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Stack(
                      children: <Widget>[
                        Image.network(
                          _item.cover.feed,
                          fit: BoxFit.fitWidth,
                        ),
                        Positioned(
                          bottom: 10,
                          right: 10,
                          child: Text(
                            _duration,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic),
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
                        Container(
                          width: 280,
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
                        Spacer(),
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
