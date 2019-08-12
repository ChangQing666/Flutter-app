// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intheaters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

intheaters _$intheatersFromJson(Map<String, dynamic> json) {
  return intheaters(
    json['count'] as int,
    json['start'] as int,
    json['total'] as int,
    (json['subjects'] as List)
        ?.map((e) =>
            e == null ? null : Subjects.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['title'] as String,
  );
}

Map<String, dynamic> _$intheatersToJson(intheaters instance) =>
    <String, dynamic>{
      'count': instance.count,
      'start': instance.start,
      'total': instance.total,
      'subjects': instance.subjects,
      'title': instance.title,
    };

Subjects _$SubjectsFromJson(Map<String, dynamic> json) {
  return Subjects(
    json['rating'] == null
        ? null
        : Rating.fromJson(json['rating'] as Map<String, dynamic>),
    (json['genres'] as List)?.map((e) => e as String)?.toList(),
    json['title'] as String,
    (json['casts'] as List)
        ?.map(
            (e) => e == null ? null : Casts.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['durations'] as List)?.map((e) => e as String)?.toList(),
    json['collect_count'] as int,
    json['mainland_pubdate'] as String,
    json['has_video'] as bool,
    json['original_title'] as String,
    json['subtype'] as String,
    (json['directors'] as List)
        ?.map((e) =>
            e == null ? null : Directors.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['pubdates'] as List)?.map((e) => e as String)?.toList(),
    json['year'] as String,
    json['images'] == null
        ? null
        : Images.fromJson(json['images'] as Map<String, dynamic>),
    json['alt'] as String,
    json['id'] as String,
  );
}

Map<String, dynamic> _$SubjectsToJson(Subjects instance) => <String, dynamic>{
      'rating': instance.rating,
      'genres': instance.genres,
      'title': instance.title,
      'casts': instance.casts,
      'durations': instance.durations,
      'collect_count': instance.collectCount,
      'mainland_pubdate': instance.mainlandPubdate,
      'has_video': instance.hasVideo,
      'original_title': instance.originalTitle,
      'subtype': instance.subtype,
      'directors': instance.directors,
      'pubdates': instance.pubdates,
      'year': instance.year,
      'images': instance.images,
      'alt': instance.alt,
      'id': instance.id,
    };

Rating _$RatingFromJson(Map<String, dynamic> json) {
  return Rating(
    json['max'] as int,
    (json['average'] as num)?.toDouble(),
    json['details'] == null
        ? null
        : Details.fromJson(json['details'] as Map<String, dynamic>),
    json['stars'] as String,
    json['min'] as int,
  );
}

Map<String, dynamic> _$RatingToJson(Rating instance) => <String, dynamic>{
      'max': instance.max,
      'average': instance.average,
      'details': instance.details,
      'stars': instance.stars,
      'min': instance.min,
    };

Details _$DetailsFromJson(Map<String, dynamic> json) {
  return Details(
    (json['details1'] as num)?.toDouble(),
    (json['details2'] as num)?.toDouble(),
    (json['details3'] as num)?.toDouble(),
    (json['details4'] as num)?.toDouble(),
    (json['details5'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$DetailsToJson(Details instance) => <String, dynamic>{
      'details1': instance.details1,
      'details2': instance.details2,
      'details3': instance.details3,
      'details4': instance.details4,
      'details5': instance.details5,
    };

Casts _$CastsFromJson(Map<String, dynamic> json) {
  return Casts(
    json['avatars'],
    json['name_en'] as String,
    json['name'] as String,
    json['alt'] as String,
    json['id'] as String,
  );
}

Map<String, dynamic> _$CastsToJson(Casts instance) => <String, dynamic>{
      'avatars': instance.avatars,
      'name_en': instance.nameEn,
      'name': instance.name,
      'alt': instance.alt,
      'id': instance.id,
    };

Avatars _$AvatarsFromJson(Map<String, dynamic> json) {
  return Avatars(
    json['small'] as String,
    json['large'] as String,
    json['medium'] as String,
  );
}

Map<String, dynamic> _$AvatarsToJson(Avatars instance) => <String, dynamic>{
      'small': instance.small,
      'large': instance.large,
      'medium': instance.medium,
    };

Directors _$DirectorsFromJson(Map<String, dynamic> json) {
  return Directors(
    json['avatars'],
    json['name_en'] as String,
    json['name'] as String,
    json['alt'] as String,
    json['id'] as String,
  );
}

Map<String, dynamic> _$DirectorsToJson(Directors instance) => <String, dynamic>{
      'avatars': instance.avatars,
      'name_en': instance.nameEn,
      'name': instance.name,
      'alt': instance.alt,
      'id': instance.id,
    };

Images _$ImagesFromJson(Map<String, dynamic> json) {
  return Images(
    json['small'] as String,
    json['large'] as String,
    json['medium'] as String,
  );
}

Map<String, dynamic> _$ImagesToJson(Images instance) => <String, dynamic>{
      'small': instance.small,
      'large': instance.large,
      'medium': instance.medium,
    };
