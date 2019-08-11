import 'package:flutter/material.dart';
import 'package:page_view/pages/city_page/city_page.dart';
import 'package:page_view/pages/furniture_detail_page/furniture_detail_page.dart';
import 'package:page_view/pages/furniture_list_page/furniture_list_page.dart';
import 'package:page_view/pages/index_page/index_page.dart';
import 'package:page_view/pages/onboarding_page/onboarding_page.dart';
import 'package:page_view/pages/cardlist_page/cardlist_page.dart';
import 'package:page_view/pages/video_page/video_page.dart';
import 'package:page_view/pages/weekly_page/weekly_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => IndexPage());
      case '/onboarding':
        return MaterialPageRoute(builder: (_) => OnBoardingPage());
      case '/furniture_list':
        return MaterialPageRoute(builder: (_) => FurnitureListPage());
      case '/furniture_detail':
        return MaterialPageRoute(builder: (_) => FurnitureDetailPage());
      case '/city':
        return MaterialPageRoute(builder: (_) => CityPage());
      case '/cardlist':
        return MaterialPageRoute(builder: (_) => CardlistPage());
      case '/ranklist':
        return MaterialPageRoute(builder: (_) => WeeklyPage());
      case '/video':
        if (args is int) {
          return MaterialPageRoute(builder: (_) => VideoPage(params: args));
        }
        return _errorRoute();
      default:
        return _errorRoute();
    }
  }
}

Route<dynamic> _errorRoute() {
  return MaterialPageRoute(builder: (_) {
    return Scaffold(
      appBar: AppBar(title: Text('Error')),
      body: Center(child: Text('ERROR')),
    );
  });
}
