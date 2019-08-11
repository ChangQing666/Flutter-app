import 'package:flutter/material.dart';

import 'data.dart';

class CityPage extends StatefulWidget {
  @override
  _CityPageState createState() => _CityPageState();
}

class _CityPageState extends State<CityPage> {
  PageController _controller;
  dynamic _currentPage = 0;

  @override
  void initState() {
    _controller = PageController(
      initialPage: _currentPage,
      keepPage: true,
      viewportFraction: 0.8,
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: AnimatedContainer(
              duration: Duration(milliseconds: 500),
              color: cityList[_currentPage].color,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 650.0,
                      child: PageView.builder(
                        itemCount: cityList.length,
                        controller: _controller,
                        pageSnapping: true,
                        onPageChanged: (i) {
                          setState(() {
                            _currentPage = i;
                          });
                        },
                        itemBuilder: (context, index) {
                          var item = cityList[index];
                          return AnimatedBuilder(
                            animation: _controller,
                            builder: (context, child) {
                              double value = 1;
                              if (_controller.position.haveDimensions) {
                                value = _controller.page - index;
                                value = (1 - (value.abs() * 0.5)).clamp(0.0, 1.0);
                                return Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                      width: 300.0,
                                      height: Curves.easeIn.transform(value) * 600,
                                      padding: EdgeInsets.only(
                                          left: 15, right: 15, bottom: 15),
                                      decoration: BoxDecoration(
                                        color: item.color,
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(22),
                                            bottomRight: Radius.circular(22)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black12,
                                            spreadRadius: 2,
                                            offset: Offset(1.0, 10.0),
                                            blurRadius: 30,
                                          )
                                        ],
                                      ),
                                      child: child,
                                    ));
                              } else {
                                return Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                      width: 300.0,
                                      height: Curves.easeIn.transform(
                                          index == 0 ? value : value * 0.5) *
                                          600,
                                      padding: EdgeInsets.only(
                                          left: 15, right: 15, bottom: 15),
                                      decoration: BoxDecoration(
                                        color: item.color,
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(22),
                                            bottomRight: Radius.circular(22)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black12,
                                            spreadRadius: 2,
                                            offset: Offset(1.0, 10.0),
                                            blurRadius: 30,
                                          )
                                        ],
                                      ),
                                      child: child,
                                    ));
                              }
                            },
                            child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(25),
                                    bottomRight: Radius.circular(25)),
                                child: Image.asset(item.imageUrl, fit: BoxFit.cover)),
                          );
                        },
                      ),
                    ),
                    Expanded(
                      child: AnimatedBuilder(
                        animation: _controller,
                        builder: (context, child) {
                          double value = 1;
                          if (_controller.position.haveDimensions) {
                            value = _controller.page - _currentPage;
                            value = (1 - (value.abs() * 0.5)).clamp(0.0, 1.0);
                          }
                          return Transform.translate(
                            offset: Offset(0, 150 * (1 - value)),
                            child: Opacity(
                                opacity: value,
                                child: child),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.only(top: 40, left: 70, right: 70),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(cityList[_currentPage].title,
                                  style: TextStyle(
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87)),
                              SizedBox(height: 10.0),
                              RichText(
                                text: TextSpan(
                                  text: cityList[_currentPage].description,
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87),
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                              SizedBox(height: 40),
                              Container(
                                width: 130,
                                height: 3,
                                color: Colors.blue,
                              ),
                              SizedBox(height: 4),
                              Text('Read more',
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 20,
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            left:10,
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.blue.withOpacity(0.4),
              onPressed:()=> Navigator.pushNamed(context, '/'),
            ),
          )
        ],
      ),
    );
  }
}
