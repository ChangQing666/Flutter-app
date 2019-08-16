import 'package:flutter/material.dart';
import 'package:page_view/pages/furniture_list_page/data.dart';
class FurnitureListPage extends StatefulWidget {
  @override
  _FurnitureListPageState createState() => _FurnitureListPageState();
}

class _FurnitureListPageState extends State<FurnitureListPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width; // 设备高
    final _height = MediaQuery.of(context).size.height; // 设备高

    Widget _buildAppBar() {
      return Positioned(
        top: 40.0,
        left: 0.0,
        right: 0.0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.arrow_back),
                  color: Colors.black54,
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              IconButton(
                  icon: Icon(Icons.search),
                  color: Colors.black54,
                  onPressed: () {
                    Navigator.pushNamed(context, '/test');
                  }),
            ],
          ),
        ),
      );
    }

    Widget _buildGradientBody(double width, double height) {
      return Align(
        alignment: Alignment.topRight,
        child: Container(
          width: width * .8,
          height: height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFfbfcfd), Color(0xFFf2f3f8)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.5, 1.0],
            ),
          ),
        ),
      );
    }

    Widget _buildTitle() {
      return Positioned(
        top: 180.0,
        left: 23.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Wooden Armchairs',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'LOREM IPSUM',
              style: TextStyle(
                color: Colors.deepOrangeAccent,
                fontSize: 15.0,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      );
    }
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          _buildGradientBody(_width, _height),
          Positioned(
            left: 0,
            top: 0,
            height: _height,
            child: Container(
              width: 100.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.grey[100],
                    Color(0xFFf2f3f8),
                  ],
                  stops: [0.0, 1.0],
                ),
              ),
            ),
          ),
          _buildAppBar(),
          _buildTitle(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 0.0),
              child: SizedBox(
                height: _height * .6,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: furnitureList.length,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    final item = furnitureList[index];
                    return Padding(
                      padding: const EdgeInsets.only(left: 60.0, top: 60),
                      child: SizedBox(
                        width: 200.0,
                        child: Stack(
                          fit: StackFit.expand,
                          overflow: Overflow.visible,
                          children: [
                            InkWell(
                              onTap: (){
                                Navigator.pushNamed(context, '/furniture_detail');
                              },
                              child: Container(
                                margin: EdgeInsets.only(bottom: 60.0),
                                decoration: BoxDecoration(
                                  color: (index % 2 == 0)
                                      ? Colors.white
                                      : Color(0xFF2a2d3f),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      offset: Offset(0.0, 12.0),
                                      blurRadius: 10.0,
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 30.0, right: 10.0, bottom: 60.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(
                                        height: 50.0,
                                      ),
                                      Text(item.title,
                                          style: TextStyle(
                                            color: (index % 2 == 0)
                                                ? Colors.black
                                                : Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0,
                                          )),
                                      SizedBox(
                                        height: 8.0,
                                      ),
                                      Text(item.subTitle,
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14.0,
                                          )),
                                      SizedBox(
                                        height: 70.0,
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          text: item.price,
                                          style: TextStyle(
                                              fontSize: 25.0,
                                              color: (index % 2 == 0)
                                                  ? Colors.black
                                                  : Colors.white,
                                              fontWeight: FontWeight.bold),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: ' \$',
                                                style: TextStyle(
                                                    fontSize: 28.0,
                                                    color: (index % 2 == 0)
                                                        ? Colors.black
                                                        : Colors.white)),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: -60,
                              left: 0,
                              right: 0,
                              child: Image.asset(
                                item.imageUrl,
                                height: 200,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          onTap: (index){
            setState(() {
              _currentIndex = index;
            });
          },
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.panorama_horizontal),
              title: Container(
                height: 0,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_border),
              title: Container(
                height: 0,
              ),
            ),
          ]),
      floatingActionButton: Container(
        width: 65.0,
        height:65.0,
        decoration: BoxDecoration(
          color:Color(0xFFfa7b58),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
            color: Color(0xFFf78a6c).withOpacity(.6),
            offset: Offset(0.0, 10.0),
            blurRadius: 10.0,
          )]
        ),
        child: RawMaterialButton(
           shape: CircleBorder(),
            child: Icon(Icons.add,size:35.0,color: Colors.white),
            onPressed: (){
                Navigator.pushNamed(context, '/city');
            }
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}


