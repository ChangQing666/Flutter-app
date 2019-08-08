class Categories {
//  int id;
//    int count;
    int total;
//    String nextPageUrl;
//    List<Item> itemList;
//  String description;
  Categories(
      {
//      this.id,
//      this.count,
      this.total,
//      this.nextPageUrl,
//      this.itemList,
//      this.description
      });

  factory Categories.fromJson(Map<String, dynamic> json) {
//      var list = json['itemList'] as List;
//      print(list.runtimeType);
//      List<Item> itemList = list.map((i) => Item.fromJson(i)).toList();
    return Categories(
//          id: json['id'],
//          count: json['count'],
          total: int.parse(json['total']),
//          nextPageUrl: json['nextPageUrl'],
//          itemList: itemList,
//        description: json['description']
        );
  }
}

class Item {
  final int id;
  final String type;
  final Data data;
  Item({this.id, this.type, this.data});

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      id: json['id'],
      type: json['type'],
      data: json['data'],
    );
  }
}

class Data {
  final int id;
  final String dataType;
  final String image;
  Data({this.id, this.dataType, this.image});

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      id: json['id'],
      dataType: json['dataType'],
      image: json['image'],
    );
  }
}
