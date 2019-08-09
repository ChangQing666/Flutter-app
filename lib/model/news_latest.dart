import 'package:json_annotation/json_annotation.dart';

part 'news_latest.g.dart';


@JsonSerializable()
class NewsLatest extends Object {

  @JsonKey(name: 'date')
  String date;

  @JsonKey(name: 'stories')
  List<Stories> stories;

  @JsonKey(name: 'top_stories')
  List<Top_stories> topStories;

  NewsLatest(this.date,this.stories,this.topStories,);

  factory NewsLatest.fromJson(Map<String, dynamic> srcJson) => _$NewsLatestFromJson(srcJson);

  Map<String, dynamic> toJson() => _$NewsLatestToJson(this);

}


@JsonSerializable()
class Stories extends Object {

  @JsonKey(name: 'images')
  List<String> images;

  @JsonKey(name: 'type')
  int type;

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'ga_prefix')
  String gaPrefix;

  @JsonKey(name: 'title')
  String title;

  Stories(this.images,this.type,this.id,this.gaPrefix,this.title,);

  factory Stories.fromJson(Map<String, dynamic> srcJson) => _$StoriesFromJson(srcJson);

  Map<String, dynamic> toJson() => _$StoriesToJson(this);

}


@JsonSerializable()
class Top_stories extends Object {

  @JsonKey(name: 'image')
  String image;

  @JsonKey(name: 'type')
  int type;

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'ga_prefix')
  String gaPrefix;

  @JsonKey(name: 'title')
  String title;

  Top_stories(this.image,this.type,this.id,this.gaPrefix,this.title,);

  factory Top_stories.fromJson(Map<String, dynamic> srcJson) => _$Top_storiesFromJson(srcJson);

  Map<String, dynamic> toJson() => _$Top_storiesToJson(this);

}


