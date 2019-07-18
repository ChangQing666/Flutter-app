import 'package:flutter/material.dart';
import 'detailData.dart';
import 'detailIndicator.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> with TickerProviderStateMixin {
  int _index = 0;

  AnimationController _animationController;
  Animation<double> _titleAnim;
  Animation<double> _subTitleAnim;
  Animation<double> _priceAnim;

  @override
  void initState() {
    _animationController = AnimationController(
        duration: Duration(milliseconds: 1500), vsync: this);
    _titleAnim = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Interval(0.0, 0.3),
      ),
    );
    _subTitleAnim = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Interval(0.3, 0.5),
      ),
    );
    _priceAnim = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Interval(0.5, 0.8),
      ),
    );
    _animationController.addListener(() {
      setState(() {});
    });
    _animationController.forward();
    super.initState();
  }

  void _nextImage() {
    setState(() {
      if (_index < furnitureDetailList.length - 1) {
        _index++;
        _animationController.reset();
        _animationController.forward();
      } else {
        _index = _index;
      }
    });
  }

  void _prevImage() {
    setState(() {
      if (_index > 0) {
        _index--;
        _animationController.reset();
        _animationController.forward();
      } else {
        _index = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: <Widget>[
          GestureDetector(
            onHorizontalDragEnd: (DragEndDetails dragEndDetails) {
              if (dragEndDetails.velocity.pixelsPerSecond.dx < 0) {
                _nextImage();
              } else if (dragEndDetails.velocity.pixelsPerSecond.dx > 0) {
                _prevImage();
              }
            },
            child: SizedBox(
              width: double.infinity,
              height: 0.75 * _height,
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  ClipRRect(
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(60.0)),
                      child: Image.asset(furnitureDetailList[_index].imageUrl,
                          fit: BoxFit.fitHeight)),
                  Padding(
                    padding: const EdgeInsets.only(top: 200.0, left: 40.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Transform.translate(
                          offset: Offset(0, 30 * (1 - _titleAnim.value)),
                          child: Opacity(
                            opacity: _titleAnim.value,
                            child: Text(furnitureDetailList[_index].title,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(0.0, 20 * (1 - _subTitleAnim.value)),
                          child: Opacity(
                            opacity: _subTitleAnim.value,
                            child: Text(furnitureDetailList[_index].subTitle,
                                style: TextStyle(color: Colors.black26)),
                          ),
                        ),
                        SizedBox(height: 40.0),
                        Opacity(
                          opacity: _priceAnim.value,
                          child: RichText(
                            text: TextSpan(
                              text: furnitureDetailList[_index].price,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 40.0,
                                fontWeight: FontWeight.bold,
                              ),
                              children: [TextSpan(text: ' \$')],
                            ),
                          ),
                        ),
                        SizedBox(height: 40.0),
                        DetailIndicator(furnitureDetailList.length, _index),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 50.0,
                    left: 30.0,
                    child: InkWell(
                      child:
                          Icon(Icons.keyboard_backspace, color: Colors.black38),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Stack(
              fit: StackFit.expand,
              overflow: Overflow.clip,
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30.0, left: 30.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        textDirection: TextDirection.ltr,
                        children: <Widget>[
                          Text(
                            'Wooden Armchairs',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          SizedBox(height: 20.0),
                          Container(
                              width: 250.0,
                              child: RichText(
                                  maxLines: 6,
                                  overflow: TextOverflow.ellipsis,
                                  text: TextSpan(
                                      text:
                                          'The Stoic approach is just one of many ideas for how to handle conflict, but there’s one element of their philosophy that feels particularly applicable in these insult-happy times. The Stoics weren’t pushovers — they just knew that not all insults were created equal. And most importantly, they knew how to decide which ones to ignore and which to take to heart.',
                                      style: TextStyle(
                                          fontSize: 18.0, color: Colors.grey))))
                        ]),
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: SizedBox(
                    width: 150.0,
                    height: 60.0,
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(30)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Expanded(
                            child: Container(
                                color: Colors.pinkAccent,
                                child: Icon(Icons.card_travel,
                                    color: Colors.white)),
                          ),
                          Expanded(
                            child: Container(
                                color: Colors.black87,
                                child:
                                    Icon(Icons.favorite, color: Colors.white)),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
