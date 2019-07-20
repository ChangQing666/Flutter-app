import 'dart:math';
import 'package:flutter/material.dart';
import 'data.dart';

class StackTestPage extends StatefulWidget {
  @override
  _StackTestPageState createState() => _StackTestPageState();
}

class _StackTestPageState extends State<StackTestPage> {
 dynamic currentPage = lists.length-1;
  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: lists.length-1);
    controller.addListener(() {
      setState(() {
        currentPage = controller.page;
        print(currentPage);
      });
    });

    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: SizedBox(
        width: 400,
        height: 600,
        child: Stack(
          children: <Widget>[
            CardScrollWidget(currentPage),
            Positioned.fill(
              child: PageView.builder(
                itemCount: lists.length,
                reverse: true,
                controller: controller,
                itemBuilder: (context, index) {
                  return Container();
                },
              )
            ),
          ],
        ),
      ),
    );
  }
}
var cardAspectRatio = 12.0 / 16.0;
var widgetAspectRatio = cardAspectRatio * 1.2;
class CardScrollWidget extends StatelessWidget {
  var currentPage;
  var padding = 20.0;
  var verticalInset = 20.0;

  CardScrollWidget(this.currentPage);

  @override
  Widget build(BuildContext context) {
    return new AspectRatio(
      aspectRatio: widgetAspectRatio,
      child: LayoutBuilder(builder: (context, contraints) {
        var width = contraints.maxWidth;
        var height = contraints.maxHeight;

        var safeWidth = width - 2 * padding;
        var safeHeight = height - 2 * padding;

        var heightOfPrimaryCard = safeHeight;
        var widthOfPrimaryCard = heightOfPrimaryCard * cardAspectRatio;

        var primaryCardLeft = safeWidth - widthOfPrimaryCard;
        var horizontalInset = primaryCardLeft / 2;

        List<Widget> cardList = new List();

        for (var i = 0; i < lists.length; i++) {
          var delta = i - currentPage;
          bool isOnRight = delta > 0;

          var start = padding +
              max(
                  primaryCardLeft -
                      horizontalInset * -delta * (isOnRight ? 15 : 1),
                  0.0);

          var cardItem = Positioned.directional(
            top: padding + verticalInset * max(-delta, 0.0),
            bottom: padding + verticalInset * max(-delta, 0.0),
            start: start,
            textDirection: TextDirection.rtl,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      offset: Offset(3.0, 6.0),
                      blurRadius: 10.0)
                ]),
                child: AspectRatio(
                  aspectRatio: cardAspectRatio,
                  child: Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      Image.asset(lists[i].imageUrl, fit: BoxFit.cover),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 8.0),
                              child: Text(lists[i].title,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25.0,
                                      )),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
          cardList.add(cardItem);
        }
        return Stack(
          children: cardList,
        );
      }),
    );
  }
}