import 'package:json_annotation/json_annotation.dart';

part 'tuchong_discover.g.dart';


@JsonSerializable()
class tuchong_discover extends Object {

  @JsonKey(name: 'banners')
  List<Banners> banners;

  @JsonKey(name: 'hotEvents')
  List<HotEvents> hotEvents;

  @JsonKey(name: 'categories')
  List<Categories> categories;

  @JsonKey(name: 'result')
  String result;

  tuchong_discover(this.banners,this.hotEvents,this.categories,this.result,);

  factory tuchong_discover.fromJson(Map<String, dynamic> srcJson) => _$tuchong_discoverFromJson(srcJson);

  Map<String, dynamic> toJson() => _$tuchong_discoverToJson(this);

}


@JsonSerializable()
class Banners extends Object {

  @JsonKey(name: 'url')
  String url;

  @JsonKey(name: 'src')
  String src;

  Banners(this.url,this.src,);

  factory Banners.fromJson(Map<String, dynamic> srcJson) => _$BannersFromJson(srcJson);

  Map<String, dynamic> toJson() => _$BannersToJson(this);

}


@JsonSerializable()
class HotEvents extends Object {

  @JsonKey(name: 'tag_id')
  String tagId;

  @JsonKey(name: 'tag_name')
  String tagName;

  @JsonKey(name: 'created_at')
  String createdAt;

  @JsonKey(name: 'status')
  String status;

  @JsonKey(name: 'posts')
  String posts;

  @JsonKey(name: 'new_posts')
  String newPosts;

  @JsonKey(name: 'participants')
  String participants;

  @JsonKey(name: 'end_at')
  String endAt;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'url')
  String url;

  @JsonKey(name: 'event_type')
  String eventType;

  @JsonKey(name: 'image_count')
  int imageCount;

  @JsonKey(name: 'deadline')
  String deadline;

  @JsonKey(name: 'prize_desc')
  String prizeDesc;

  @JsonKey(name: 'prize_url')
  String prizeUrl;

  @JsonKey(name: 'introduction_url')
  String introductionUrl;

  @JsonKey(name: 'introduction_id')
  int introductionId;

  @JsonKey(name: 'competition_type')
  int competitionType;

  @JsonKey(name: 'category')
  List<dynamic> category;

  @JsonKey(name: 'remainingDays')
  int remainingDays;

  @JsonKey(name: 'dueDays')
  int dueDays;

  @JsonKey(name: 'image_posts')
  List<dynamic> imagePosts;

  @JsonKey(name: 'list_banner')
  bool listBanner;

  @JsonKey(name: 'images')
  List<String> images;

  @JsonKey(name: 'app_url')
  String appUrl;

  HotEvents(this.tagId,this.tagName,this.createdAt,this.status,this.posts,this.newPosts,this.participants,this.endAt,this.title,this.url,this.eventType,this.imageCount,this.deadline,this.prizeDesc,this.prizeUrl,this.introductionUrl,this.introductionId,this.competitionType,this.category,this.remainingDays,this.dueDays,this.imagePosts,this.listBanner,this.images,this.appUrl,);

  factory HotEvents.fromJson(Map<String, dynamic> srcJson) => _$HotEventsFromJson(srcJson);

  Map<String, dynamic> toJson() => _$HotEventsToJson(this);

}


@JsonSerializable()
class Categories extends Object {

  @JsonKey(name: 'tag_name')
  String tagName;

  @JsonKey(name: 'tag_id')
  int tagId;

  Categories(this.tagName,this.tagId,);

  factory Categories.fromJson(Map<String, dynamic> srcJson) => _$CategoriesFromJson(srcJson);

  Map<String, dynamic> toJson() => _$CategoriesToJson(this);

}


