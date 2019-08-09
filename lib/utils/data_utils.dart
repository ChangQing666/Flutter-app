import 'dart:async' show Future;
import 'package:page_view/api/api.dart';
import './net_utils.dart';
import '../model/categories.dart';
import '../model/news_latest.dart';

class DataUtils{
  static Future<NewsLatest> getNewsLatest() async {
    var response = await NetUtils.get('https://news-at.zhihu.com/api/4/news/latest');
    print("response: ${response}");
    NewsLatest newsLatest = NewsLatest.fromJson(response);
    return newsLatest;
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