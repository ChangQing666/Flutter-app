import 'package:flutter/material.dart';
import 'package:page_view/pages/city_page/city_page.dart';
import 'package:page_view/pages/furniture_detail_page/furniture_list_page.dart';
import 'package:page_view/pages/index_page/index_page.dart';
import 'package:page_view/pages/onboarding_page/indicator.dart';
import 'package:page_view/pages/onboarding_page/data.dart';
import 'package:page_view/pages/furniture_list_page/furniture_list_page.dart';
import 'package:page_view/pages/test_page/stack_test.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PAGE VIEW',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      initialRoute: '/index',
      routes: {

        '/index': (BuildContext context) => IndexPage(),
        '/home': (BuildContext context) => HomePage(),

        '/stack_test': (BuildContext context) => StackTestPage(),
        '/detail': (BuildContext context) => DetailPage(),
        '/city': (BuildContext context) => CityPage(),
      },
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  PageController _pageController;
  AnimationController _animationController;
  Animation _scaleAnimation;
  int currentPage = 0;
  bool lastPage = false;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: currentPage);
    _animationController = AnimationController(
        duration: Duration(microseconds: 1000), vsync: this);
    _scaleAnimation = Tween(begin: 0.3, end: 1.0).animate(_animationController);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [Color(0xFF485563), Color(0xFF29323C)],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        tileMode: TileMode.clamp,
        stops: [0.0, 1.0],
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            PageView.builder(
              itemCount: pageList.length,
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                  if (index == pageList.length - 1) {
                    _animationController.forward();
                    lastPage = true;
                  } else {
                    _animationController.reset();
                    lastPage = false;
                  }
                });
              },
              itemBuilder: (context, index) {
                var page = pageList[index];
                return AnimatedBuilder(
                  animation: _pageController,
                  builder: (context, child) {
                    var delta;
                    var y = 1.0;

                    if (_pageController.position.haveDimensions) {
                      delta = _pageController.page - index;
                      y = 1 - delta.abs().clamp(0.0, 1.0);
                    }
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Image.asset(page.imageUrl),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30.0, vertical: 30.0),
                          child: Text(page.title,
                              style: TextStyle(
                                  color: Colors.greenAccent,
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.w900)),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30.0, vertical: 0.0),
                          child: Transform(
                              transform: Matrix4.translationValues(
                                  0.0, 50.0 * (1 - y), 0.0),
                              child: Text(page.body,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w300))),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
            Positioned(
              bottom: 80,
              left: 30,
              child: Container(
                width: 200,
                child: PageIndicator(currentPage, pageList.length),
              ),
            ),
            Positioned(
              bottom: 50,
              right: 20,
              child: ScaleTransition(
                scale: _scaleAnimation,
                child: lastPage
                    ? FloatingActionButton(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/home');
                        },
                      )
                    : Container(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
