import 'package:flutter/material.dart';

class ItemModel {
  String imageUrl;
  String title;
  String description;
  Color color;
  ItemModel({this.imageUrl, this.title, this.description, this.color});
}

var cityList = [
  ItemModel(
    imageUrl: 'assets/images/city00.jpeg',
    title: 'BeiJing City',
    description:
        "The Great Wall of China is the collective name of a series of fortification systems generally built across the historical northern borders of China to protect and consolidate territories of Chinese states and empires against various nomadic groups of the steppe and their polities. Several walls were being built from as early as the 7th century BC by ancient Chinese states",
    color: Colors.blue.withOpacity(0.2),
  ),
  ItemModel(
    imageUrl: 'assets/images/city01.jpeg',
    title: 'France Paris',
    description:
    'Paris is the capital and most populous city of France, with an area of 105 square kilometres (41 square miles) and an official estimated population of 2,140,526 residents as of 1 January 2019',
    color: Colors.pinkAccent.withOpacity(0.2),
  ),
  ItemModel(
    imageUrl: 'assets/images/city02.jpeg',
    title: 'Golden State',
    description:
    "The Golden State Warriors are an American professional basketball team based in San Francisco, California. The Warriors compete in the National Basketball Association (NBA), as a member of the league's Western Conference Pacific Division. ",
    color: Colors.blue.withOpacity(0.2),
  ),
  ItemModel(
    imageUrl: 'assets/images/city03.jpeg',
    title: 'New York',
    description:
        "The City of New York, usually called either New York City (NYC) or simply New York (NY), is the most populous city in the United States. With an estimated 2018 population of 8,398,748 distributed over a land area of about 302.6 square miles (784 km2), New York is also the most densely populated major city in the United States.",
    color: Colors.green.withOpacity(0.2),
  ),
  ItemModel(
    imageUrl: 'assets/images/city04.jpeg',
    title: 'Pyramid',
    description:
        "A pyramid ngular and converge to a single step at the top, making the shape roughly a pyramid in the geometric sense",
    color: Colors.green.withOpacity(0.2),
  ),
];
