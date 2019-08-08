import 'dart:async';
import 'dart:io';
import 'package:dio/dio.dart';

Map<String, dynamic> optHeader = {
'authority': 'baobab.kaiyanapp.com'
//  'accept-language': 'zh-cn',
//  'content-type': 'application/json'
};

var dio = new Dio(BaseOptions(connectTimeout: 30000, headers: optHeader));

class NetUtils {
  // get请求
  static Future get(String url, [Map<String, dynamic> params]) async {
    var response;
    // 设置代理 便于本地 charles 抓包
     (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.findProxy = (uri) {
        return "PROXY 192.168.1.118:8888";
      };
    };


    if (params != null) {
      response = await dio.get(url, queryParameters: params);
    } else {
      response = await dio.get(url);
    }
    return response.data;
  }
  // post请求
  static Future post(String url, Map<String, dynamic> params) async {
    var response = await dio.post(url, data: params);
    return response.data;
  }
}
