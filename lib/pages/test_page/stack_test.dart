import 'package:flutter/material.dart';

class StackTestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
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
      ),
    );
  }
}
