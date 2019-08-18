import 'dart:async' show Future;
import 'package:page_view/api/api.dart';
import './net_utils.dart';
import '../model/categories.dart';
import '../model/news_latest.dart';
import '../model/weekly.dart';
class DataUtils{
  static Future<NewsLatest> getNewsLatest() async {
    var response = await NetUtils.get('https://news-at.zhihu.com/api/4/news/latest');
    print("response: ${response}");
    NewsLatest newsLatest = NewsLatest.fromJson(response);
    return newsLatest;
  }
  static Future<Weekly> getWeekly(int index) async {
    String _url = '';
    if(index == 0) {
      _url = Api.RANKLIST_WEEKLY;
    }else if(index == 1) {
      _url = Api.RANKLIST_MONTHLY;
    }else if(index == 2) {
      _url = Api.RANKLIST_HISTORICAL;
    }
    var response = await NetUtils.get(_url);
    Weekly weekly = Weekly.fromJson(response);
    return weekly;
  }

  // 全部分类
//  static Future<Categories> getCategories() async{
////    var response = await NetUtils.get(Api.CATEGORIES);
//    var response = await NetUtils.get('https://news-at.zhihu.com/api/4/news/latest');
//    print("response: ${response}");
//    Categories categories = Categories.fromJson(response);
//    return categories;
//  }

  // 评论
//  static Future<Replies> getReplies(Map<String,String> params) async{
//    var response = await NetUtils.get(Api.REPLIES, params);
//    Replies replies = Replies.fromJson(response['data']);
//    return replies;
//  }
//
//
//
//  // 退出登陆
//  static Future<bool> logout() async{
//    var response = await NetUtils.get(Api.LOGOUT);
//    print('退出登陆 $response');
//    return response['success'];
//  }
}