// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tuchong_discover.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

tuchong_discover _$tuchong_discoverFromJson(Map<String, dynamic> json) {
  return tuchong_discover(
    (json['banners'] as List)
        ?.map((e) =>
            e == null ? null : Banners.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['hotEvents'] as List)
        ?.map((e) =>
            e == null ? null : HotEvents.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['categories'] as List)
        ?.map((e) =>
            e == null ? null : Categories.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['result'] as String,
  );
}

Map<String, dynamic> _$tuchong_discoverToJson(tuchong_discover instance) =>
    <String, dynamic>{
      'banners': instance.banners,
      'hotEvents': instance.hotEvents,
      'categories': instance.categories,
      'result': instance.result,
    };

Banners _$BannersFromJson(Map<String, dynamic> json) {
  return Banners(
    json['url'] as String,
    json['src'] as String,
  );
}

Map<String, dynamic> _$BannersToJson(Banners instance) => <String, dynamic>{
      'url': instance.url,
      'src': instance.src,
    };

HotEvents _$HotEventsFromJson(Map<String, dynamic> json) {
  return HotEvents(
    json['tag_id'] as String,
    json['tag_name'] as String,
    json['created_at'] as String,
    json['status'] as String,
    json['posts'] as String,
    json['new_posts'] as String,
    json['participants'] as String,
    json['end_at'] as String,
    json['title'] as String,
    json['url'] as String,
    json['event_type'] as String,
    json['image_count'] as int,
    json['deadline'] as String,
    json['prize_desc'] as String,
    json['prize_url'] as String,
    json['introduction_url'] as String,
    json['introduction_id'] as int,
    json['competition_type'] as int,
    json['category'] as List,
    json['remainingDays'] as int,
    json['dueDays'] as int,
    json['image_posts'] as List,
    json['list_banner'] as bool,
    (json['images'] as List)?.map((e) => e as String)?.toList(),
    json['app_url'] as String,
  );
}

Map<String, dynamic> _$HotEventsToJson(HotEvents instance) => <String, dynamic>{
      'tag_id': instance.tagId,
      'tag_name': instance.tagName,
      'created_at': instance.createdAt,
      'status': instance.status,
      'posts': instance.posts,
      'new_posts': instance.newPosts,
      'participants': instance.participants,
      'end_at': instance.endAt,
      'title': instance.title,
      'url': instance.url,
      'event_type': instance.eventType,
      'image_count': instance.imageCount,
      'deadline': instance.deadline,
      'prize_desc': instance.prizeDesc,
      'prize_url': instance.prizeUrl,
      'introduction_url': instance.introductionUrl,
      'introduction_id': instance.introductionId,
      'competition_type': instance.competitionType,
      'category': instance.category,
      'remainingDays': instance.remainingDays,
      'dueDays': instance.dueDays,
      'image_posts': instance.imagePosts,
      'list_banner': instance.listBanner,
      'images': instance.images,
      'app_url': instance.appUrl,
    };

Categories _$CategoriesFromJson(Map<String, dynamic> json) {
  return Categories(
    json['tag_name'] as String,
    json['tag_id'] as int,
  );
}

Map<String, dynamic> _$CategoriesToJson(Categories instance) =>
    <String, dynamic>{
      'tag_name': instance.tagName,
      'tag_id': instance.tagId,
    };
