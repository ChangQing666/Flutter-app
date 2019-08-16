import 'package:flutter/material.dart';
import 'data.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff232540),
      appBar: AppBar(
        title: Text('首页'),
        backgroundColor: Color(0xff232540),
        elevation: 0,
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20.0),
        crossAxisSpacing: 20.0,
        mainAxisSpacing: 20.0,
        crossAxisCount: 2,
        childAspectRatio: 1.5,
        children: getList(context),
      ),
    );
  }
}

List<Widget> getList(context) {
  List<Widget> _list = [];
  for (int i = 0; i < list.length; i++) {
    _list.add(getItem(context, list[i]));
  }
  return _list;
}

Widget getItem(context, ItemModel item) {
  return InkWell(
    onTap: (){
      Navigator.pushNamed(context, item.routeName);
    },
    child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              colors: [item.bgColor, item.bgColor.withOpacity(0.9)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              tileMode: TileMode.mirror,
              stops: [0.0, 1],
            ),
            boxShadow: [
              BoxShadow(
                color: item.bgColor,
                blurRadius: 0,
                offset: Offset(0, 1),
                spreadRadius: 1,
              ),
            ]),
        child: Center(
            child: Text(
          item.title,
          style: TextStyle(fontSize: 22.0, color: Colors.white),
        ))),
  );
}
