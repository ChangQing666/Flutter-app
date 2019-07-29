import 'package:flutter/material.dart';

class ItemModel {
  String title;
  Color bgColor;
  String routeName;
  ItemModel({this.title, this.bgColor, this.routeName});
}

var list = [
  ItemModel(
    title: 'OnBoarding',
    bgColor: Colors.pinkAccent,
    routeName: '/onboarding',
  ),
  ItemModel(
    title: 'Furniture',
    bgColor: Colors.blueAccent,
    routeName: '/furniture_list',
  ),
  ItemModel(
    title: 'Detail',
    bgColor: Color(0xffed5c48),
    routeName: '/furniture_detail',
  ),
  ItemModel(
    title: 'City',
    bgColor: Color(0xff53b28f),
    routeName: '/city',
  ),
  ItemModel(
    title: 'Test',
    bgColor: Color(0xff7254b2),
    routeName: '/test',
  ),
  ItemModel(
    title: '...',
    bgColor: Color(0xffbe4236),
    routeName: '/index',
  ),
  ItemModel(
    title: '...',
    bgColor: Color(0xff164396),
    routeName: '/index',
  ),
  ItemModel(
    title: '...',
    bgColor: Color(0xff59bfee),
    routeName: '/index',
  ),
  ItemModel(
    title: '...',
    bgColor: Color(0xffb0a4e3),
    routeName: '/index',
  ),
  ItemModel(
    title: '...',
    bgColor: Color(0xff80edae),
    routeName: '/index',
  ),
  ItemModel(
    title: '...',
    bgColor: Color(0xffff0097),
    routeName: '/index',
  ),
];
