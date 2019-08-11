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
    title: 'Card 01',
    color: Colors.blue,
  ),
  ItemModel(
    imageUrl: 'assets/images/f02.png',
    title: 'Card 02',
    color: Colors.lightGreen,
  ),
  ItemModel(
    imageUrl: 'assets/images/f03.png',
    title: 'Card 03',
    color: Colors.deepPurple,
  ),
  ItemModel(
    imageUrl: 'assets/images/furniture_detail_01.jpeg',
    title: 'Card 04',
  ),
  ItemModel(
    imageUrl: 'assets/images/furniture_detail_02.jpeg',
    title: 'Card 05',
  ),
];