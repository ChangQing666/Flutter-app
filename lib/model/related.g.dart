// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'related.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Related _$RelatedFromJson(Map<String, dynamic> json) {
  return Related(
    (json['itemList'] as List)
        ?.map((e) =>
            e == null ? null : ItemList.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['count'] as int,
    json['total'] as int,
    json['adExist'] as bool,
  );
}

Map<String, dynamic> _$RelatedToJson(Related instance) => <String, dynamic>{
      'itemList': instance.itemList,
      'count': instance.count,
      'total': instance.total,
      'adExist': instance.adExist,
    };

ItemList _$ItemListFromJson(Map<String, dynamic> json) {
  return ItemList(
    json['type'] as String,
    json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>),
    json['id'] as int,
    json['adIndex'] as int,
  );
}

Map<String, dynamic> _$ItemListToJson(ItemList instance) => <String, dynamic>{
      'type': instance.type,
      'data': instance.data,
      'id': instance.id,
      'adIndex': instance.adIndex,
    };

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    json['dataType'] as String,
    json['id'] as int,
    json['type'] as String,
    json['text'] as String,
    json['actionUrl'] as String,
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'dataType': instance.dataType,
      'id': instance.id,
      'type': instance.type,
      'text': instance.text,
      'actionUrl': instance.actionUrl,
    };
