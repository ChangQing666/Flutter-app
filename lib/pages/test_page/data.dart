import'package:flutter/material.dart';

class ItemModel {
  String imageUrl;
  String title;
  Color color;
  ItemModel({this.imageUrl, this.title, this.color});
}

var lists = [
  ItemModel(
    imageUrl: 'assets/images/f01.png',
    title: 'Beautiful 00',
    color: Colors.blue,
  ),
  ItemModel(
    imageUrl: 'assets/images/f02.png',
    title: 'Beautiful 01',
    color: Colors.lightGreen,
  ),
  ItemModel(
    imageUrl: 'assets/images/f03.png',
    title: 'Beautiful 02',
    color: Colors.deepPurple,
  ),
  ItemModel(
    imageUrl: 'assets/images/furniture_detail_01.jpeg',
    title: 'Beautiful 03',
  ),
  ItemModel(
    imageUrl: 'assets/images/furniture_detail_02.jpeg',
    title: 'Beautiful 04',
  ),
];