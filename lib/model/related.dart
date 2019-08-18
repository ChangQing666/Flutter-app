import 'package:json_annotation/json_annotation.dart';

part 'related.g.dart';


@JsonSerializable()
class Related extends Object {

    @JsonKey(name: 'itemList')
    List<ItemList> itemList;

    @JsonKey(name: 'count')
    int count;

    @JsonKey(name: 'total')
    int total;

    @JsonKey(name: 'adExist')
    bool adExist;

    Related(this.itemList,this.count,this.total,this.adExist,);

    factory Related.fromJson(Map<String, dynamic> srcJson) => _$RelatedFromJson(srcJson);

    Map<String, dynamic> toJson() => _$RelatedToJson(this);

}


@JsonSerializable()
class ItemList extends Object {

    @JsonKey(name: 'type')
    String type;

    @JsonKey(name: 'data')
    Data data;

    @JsonKey(name: 'id')
    int id;

    @JsonKey(name: 'adIndex')
    int adIndex;

    ItemList(this.type,this.data,this.id,this.adIndex,);

    factory ItemList.fromJson(Map<String, dynamic> srcJson) => _$ItemListFromJson(srcJson);

    Map<String, dynamic> toJson() => _$ItemListToJson(this);

}


@JsonSerializable()
class Data extends Object {

    @JsonKey(name: 'dataType')
    String dataType;

    @JsonKey(name: 'id')
    int id;

    @JsonKey(name: 'type')
    String type;

    @JsonKey(name: 'text')
    String text;

    @JsonKey(name: 'actionUrl')
    String actionUrl;

    Data(this.dataType,this.id,this.type,this.text,this.actionUrl,);

    factory Data.fromJson(Map<String, dynamic> srcJson) => _$DataFromJson(srcJson);

    Map<String, dynamic> toJson() => _$DataToJson(this);

}


