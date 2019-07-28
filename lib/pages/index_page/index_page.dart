import 'package:flutter/material.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: Text('首页'),
        backgroundColor:Colors.indigo,
        elevation: 0,
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20.0),
        crossAxisSpacing: 20.0,
        mainAxisSpacing: 40.0,
        crossAxisCount: 2,
        childAspectRatio: 1.5,
        children: <Widget>[
          Item(),
          Item(),
          Item(),
          Item(),
          Item(),
          Item(),
        ],
      ),
    );
  }
}

Widget Item() {
  return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          colors: [Colors.pinkAccent, Colors.pinkAccent.withOpacity(0.9)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          tileMode: TileMode.mirror,
          stops: [0.0, 1],

        ),
        boxShadow: [BoxShadow(
          color: Colors.pinkAccent,
          blurRadius: 1,
          offset: Offset(0,3),
          spreadRadius: 2,
        ),]
      ),
      child: Center(
          child: Text('Hexo',
            style: TextStyle(
                fontSize: 30.0,
                color: Colors.white),)));
}
