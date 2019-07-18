import 'package:flutter/material.dart';

class DetailIndicator extends StatelessWidget {
  int count;
  int index;
  DetailIndicator(this.count, this.index);


  _buildItem(bool isActive) {
    return Container(
      width: 10.0,
      height: 10.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: isActive ? Colors.black : Colors.white,
        boxShadow: [BoxShadow(
          color: Colors.black38,
          blurRadius: 20.0,
          spreadRadius: 2.0,
          offset: Offset(0,5.0),
        )],
      ),
    );
  }

  _buildIndicatorList() {
    List<Widget> _list = [];
    for (var i = 0; i < count; i++) {
      _list.add(_buildItem(i == index));
    }
    return _list;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.0,
      height: 12.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: _buildIndicatorList(),
      ),
    );
  }
}
