import 'package:flutter/material.dart';
import 'package:page_view/utils/route_generator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PAGE VIEW',
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      //home: WeeklyPage(),
      theme: ThemeData(
          accentColor: Colors.deepOrangeAccent,
          accentTextTheme: TextTheme(body1: TextStyle(color: Colors.amber))
      ),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
