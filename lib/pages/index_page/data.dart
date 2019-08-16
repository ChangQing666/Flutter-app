import 'package:flutter/material.dart';

class ItemModel {
  String title;
  Color bgColor;
  String routeName;
  ItemModel({this.title, this.bgColor, this.routeName});
}

var list = [
  ItemModel(
    title: '开眼',
    bgColor: Color(0xff164396),
    routeName: '/ranklist',
  ),
  ItemModel(
    title: 'OnBoarding',
    bgColor: Colors.pinkAccent,
    routeName: '/onboarding',
  ),
  ItemModel(
    title: 'ListView',
    bgColor: Colors.blueAccent,
    routeName: '/furniture_list',
  ),
  ItemModel(
    title: 'Carousel-01',
    bgColor: Color(0xffed5c48),
    routeName: '/furniture_detail',
  ),
  ItemModel(
    title: 'Carousel-02',
    bgColor: Color(0xff53b28f),
    routeName: '/city',
  ),
  ItemModel(
    title: 'Carousel-03',
    bgColor: Color(0xff7254b2),
    routeName: '/cardlist',
  ),
  ItemModel(
    title: '...',
    bgColor: Color(0xff59bfee),
    routeName: '/',
  ),
  ItemModel(
    title: '...',
    bgColor: Color(0xffb0a4e3),
    routeName: '/',
  ),
  ItemModel(
    title: '...',
    bgColor: Color(0xff80edae),
    routeName: '/',
  ),
  ItemModel(
    title: '...',
    bgColor: Color(0xffff0097),
    routeName: '/',
  ),
];
