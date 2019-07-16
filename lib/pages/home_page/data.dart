import 'package:flutter/material.dart';

var furnitureList = [
  ItemModel(
    imageUrl: 'assets/images/furniture_01.png',
    title: 'Hemes ArmChair',
    subTitle: 'NEW SALE',
    price: '128',
  ),
   ItemModel(
    imageUrl: 'assets/images/furniture_02.png',
    title: 'Sofar ArmChari',
    subTitle: 'NEW SALE',
    price: '328',
  ),
   ItemModel(
    imageUrl: 'assets/images/furniture_03.png',
    title: 'Wodden ArmChair',
    subTitle: 'NEW SALE',
    price: '628',
  ),
];


class ItemModel{
  final String imageUrl;
  final String title;
  final String subTitle;
  final String price;
  ItemModel({this.imageUrl, this.title, this.subTitle, this.price});
}

