import 'package:flutter/material.dart';
import 'package:page_view/pages/city_page/city_page.dart';
import 'package:page_view/pages/furniture_detail_page/furniture_detail_page.dart';
import 'package:page_view/pages/index_page/index_page.dart';
import 'package:page_view/pages/furniture_list_page/furniture_list_page.dart';
import 'package:page_view/pages/onboarding_page/onboarding_page.dart';
import 'package:page_view/pages/test_page/stack_test.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PAGE VIEW',
      debugShowCheckedModeBanner: false,
      home: OnBoardingPage(),
//      initialRoute: '/onboarding',
      routes: {
        '/onboaring': (BuildContext context) => OnBoardingPage(),
        '/index': (BuildContext context) => IndexPage(),
        '/furniture_list': (BuildContext context) => FurnitureListPage(),
        '/furniture_detail': (BuildContext context) => FurnitureDetailPage(),
        '/city': (BuildContext context) => CityPage(),
        '/test': (BuildContext context) => StackTestPage(),
      },
    );
  }
}

