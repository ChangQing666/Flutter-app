// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_latest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsLatest _$NewsLatestFromJson(Map<String, dynamic> json) {
  return NewsLatest(
    json['date'] as String,
    (json['stories'] as List)
        ?.map((e) =>
            e == null ? null : Stories.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['top_stories'] as List)
        ?.map((e) =>
            e == null ? null : Top_stories.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$NewsLatestToJson(NewsLatest instance) =>
    <String, dynamic>{
      'date': instance.date,
      'stories': instance.stories,
      'top_stories': instance.topStories,
    };

Stories _$StoriesFromJson(Map<String, dynamic> json) {
  return Stories(
    (json['images'] as List)?.map((e) => e as String)?.toList(),
    json['type'] as int,
    json['id'] as int,
    json['ga_prefix'] as String,
    json['title'] as String,
  );
}

Map<String, dynamic> _$StoriesToJson(Stories instance) => <String, dynamic>{
      'images': instance.images,
      'type': instance.type,
      'id': instance.id,
      'ga_prefix': instance.gaPrefix,
      'title': instance.title,
    };

Top_stories _$Top_storiesFromJson(Map<String, dynamic> json) {
  return Top_stories(
    json['image'] as String,
    json['type'] as int,
    json['id'] as int,
    json['ga_prefix'] as String,
    json['title'] as String,
  );
}

Map<String, dynamic> _$Top_storiesToJson(Top_stories instance) =>
    <String, dynamic>{
      'image': instance.image,
      'type': instance.type,
      'id': instance.id,
      'ga_prefix': instance.gaPrefix,
      'title': instance.title,
    };
