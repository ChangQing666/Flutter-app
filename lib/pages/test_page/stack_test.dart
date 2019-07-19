import 'package:flutter/material.dart';
import 'data.dart';

class StackTestPage extends StatelessWidget {
  Widget _item(item) {
    return Container(
      width:300,
      height:20,
      decoration: BoxDecoration(
        color: item.color
      ),
    );
  }
  _pageList() {
    List<Widget> _list = [];
    for(var i = 0; i < lists.length; i++) {
      _list.add(_item(lists[i]));
    }
    return _list;
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ..._pageList(),
          SizedBox(
            height: 300.0,
            width: 200.0,
            child: Stack(
              fit: StackFit.expand,
              overflow: Overflow.visible,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0.0, 12.0),
                          blurRadius: 10.0,
                        )
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                        child:  Container(
                            decoration: BoxDecoration(color: Colors.blue),
                            child: Text('1234')),
                      ),
                      Text('你打发放付多过过过过'),
                    ],
                  ),
                ),
                Positioned(
                    top: -80,
                    left: 0,
                    right: 0,
                    child: Image.asset(
                      'assets/images/furniture_01.png',
                      width: 50,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
