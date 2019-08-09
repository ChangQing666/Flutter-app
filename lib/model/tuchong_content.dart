import 'package:json_annotation/json_annotation.dart';

part 'tuchong_content.g.dart';


@JsonSerializable()
class tuchong_content extends Object {

  @JsonKey(name: 'post_list')
  List<Post_list> postList;

  @JsonKey(name: 'result')
  String result;

  tuchong_content(this.postList,this.result,);

  factory tuchong_content.fromJson(Map<String, dynamic> srcJson) => _$tuchong_contentFromJson(srcJson);

  Map<String, dynamic> toJson() => _$tuchong_contentToJson(this);

}


@JsonSerializable()
class Post_list extends Object {

  @JsonKey(name: 'post_id')
  int postId;

  @JsonKey(name: 'author_id')
  String authorId;

  @JsonKey(name: 'type')
  String type;

  @JsonKey(name: 'url')
  String url;

  @JsonKey(name: 'published_at')
  String publishedAt;

  @JsonKey(name: 'excerpt')
  String excerpt;

  @JsonKey(name: 'favorites')
  int favorites;

  @JsonKey(name: 'comments')
  int comments;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'image_count')
  int imageCount;

  @JsonKey(name: 'rewardable')
  bool rewardable;

  @JsonKey(name: 'rewards')
  int rewards;

  @JsonKey(name: 'wallpaper')
  bool wallpaper;

  @JsonKey(name: 'views')
  int views;

  @JsonKey(name: 'collected')
  bool collected;

  @JsonKey(name: 'downloads')
  int downloads;

  @JsonKey(name: 'shares')
  int shares;

  @JsonKey(name: 'collect_num')
  int collectNum;

  @JsonKey(name: 'delete')
  bool delete;

  @JsonKey(name: 'recommend')
  bool recommend;

  @JsonKey(name: 'content')
  String content;

  @JsonKey(name: 'update')
  bool update;

  @JsonKey(name: 'images')
  List<Images> images;

  @JsonKey(name: 'equip')
  Equip equip;

  @JsonKey(name: 'title_image')
  Title_image titleImage;

  @JsonKey(name: 'tags')
  List<dynamic> tags;

  @JsonKey(name: 'topics')
  List<dynamic> topics;

  @JsonKey(name: 'comment_list')
  List<Comment_list> commentList;

  @JsonKey(name: 'users')
  List<dynamic> users;

  @JsonKey(name: 'site')
  Site site;

  @JsonKey(name: 'is_favorite')
  bool isFavorite;

  @JsonKey(name: 'is_top')
  bool isTop;

  Post_list(this.postId,this.authorId,this.type,this.url,this.publishedAt,this.excerpt,this.favorites,this.comments,this.title,this.imageCount,this.rewardable,this.rewards,this.wallpaper,this.views,this.collected,this.downloads,this.shares,this.collectNum,this.delete,this.recommend,this.content,this.update,this.images,this.equip,this.titleImage,this.tags,this.topics,this.commentList,this.users,this.site,this.isFavorite,this.isTop,);

  factory Post_list.fromJson(Map<String, dynamic> srcJson) => _$Post_listFromJson(srcJson);

  Map<String, dynamic> toJson() => _$Post_listToJson(this);

}


@JsonSerializable()
class Images extends Object {

  @JsonKey(name: 'img_id')
  int imgId;

  @JsonKey(name: 'user_id')
  int userId;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'excerpt')
  String excerpt;

  @JsonKey(name: 'width')
  int width;

  @JsonKey(name: 'height')
  int height;

  @JsonKey(name: 'description')
  String description;

  @JsonKey(name: 'isAuthorTK')
  bool isAuthorTK;

  Images(this.imgId,this.userId,this.title,this.excerpt,this.width,this.height,this.description,this.isAuthorTK,);

  factory Images.fromJson(Map<String, dynamic> srcJson) => _$ImagesFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ImagesToJson(this);

}


@JsonSerializable()
class Equip extends Object {

  @JsonKey(name: 'display_name')
  String displayName;

  @JsonKey(name: 'equip_id')
  String equipId;

  Equip(this.displayName,this.equipId,);

  factory Equip.fromJson(Map<String, dynamic> srcJson) => _$EquipFromJson(srcJson);

  Map<String, dynamic> toJson() => _$EquipToJson(this);

}


@JsonSerializable()
class Title_image extends Object {

  @JsonKey(name: 'width')
  int width;

  @JsonKey(name: 'height')
  int height;

  @JsonKey(name: 'url')
  String url;

  @JsonKey(name: 'img_id')
  int imgId;

  Title_image(this.width,this.height,this.url,this.imgId,);

  factory Title_image.fromJson(Map<String, dynamic> srcJson) => _$Title_imageFromJson(srcJson);

  Map<String, dynamic> toJson() => _$Title_imageToJson(this);

}


@JsonSerializable()
class Comment_list extends Object {

  @JsonKey(name: 'note_id')
  int noteId;

  @JsonKey(name: 'author')
  Author author;

  @JsonKey(name: 'content')
  String content;

  @JsonKey(name: 'liked')
  bool liked;

  @JsonKey(name: 'sub_notes')
  List<dynamic> subNotes;

  Comment_list(this.noteId,this.author,this.content,this.liked,this.subNotes,);

  factory Comment_list.fromJson(Map<String, dynamic> srcJson) => _$Comment_listFromJson(srcJson);

  Map<String, dynamic> toJson() => _$Comment_listToJson(this);

}


@JsonSerializable()
class Author extends Object {

  @JsonKey(name: 'site_id')
  String siteId;

  @JsonKey(name: 'type')
  String type;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'domain')
  String domain;

  @JsonKey(name: 'description')
  String description;

  @JsonKey(name: 'followers')
  int followers;

  @JsonKey(name: 'url')
  String url;

  @JsonKey(name: 'icon')
  String icon;

  @JsonKey(name: 'is_bind_everphoto')
  bool isBindEverphoto;

  @JsonKey(name: 'has_everphoto_note')
  bool hasEverphotoNote;

  @JsonKey(name: 'verifications')
  int verifications;

  @JsonKey(name: 'verification_list')
  List<Verification_list> verificationList;

  @JsonKey(name: 'verified')
  bool verified;

  @JsonKey(name: 'verified_type')
  int verifiedType;

  @JsonKey(name: 'verified_reason')
  String verifiedReason;

  Author(this.siteId,this.type,this.name,this.domain,this.description,this.followers,this.url,this.icon,this.isBindEverphoto,this.hasEverphotoNote,this.verifications,this.verificationList,this.verified,this.verifiedType,this.verifiedReason,);

  factory Author.fromJson(Map<String, dynamic> srcJson) => _$AuthorFromJson(srcJson);

  Map<String, dynamic> toJson() => _$AuthorToJson(this);

}


@JsonSerializable()
class Verification_list extends Object {

  @JsonKey(name: 'verification_type')
  int verificationType;

  @JsonKey(name: 'verification_reason')
  String verificationReason;

  Verification_list(this.verificationType,this.verificationReason,);

  factory Verification_list.fromJson(Map<String, dynamic> srcJson) => _$Verification_listFromJson(srcJson);

  Map<String, dynamic> toJson() => _$Verification_listToJson(this);

}


@JsonSerializable()
class Site extends Object {

  @JsonKey(name: 'site_id')
  int siteId;

  @JsonKey(name: 'type')
  String type;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'domain')
  String domain;

  @JsonKey(name: 'url')
  String url;

  @JsonKey(name: 'icon')
  String icon;

  @JsonKey(name: 'description')
  String description;

  @JsonKey(name: 'intro')
  String intro;

  @JsonKey(name: 'posts')
  int posts;

  @JsonKey(name: 'appearance')
  Appearance appearance;

  @JsonKey(name: 'is_bind_everphoto')
  bool isBindEverphoto;

  @JsonKey(name: 'has_everphoto_note')
  bool hasEverphotoNote;

  @JsonKey(name: 'followers')
  int followers;

  @JsonKey(name: 'recommend_reason')
  String recommendReason;

  @JsonKey(name: 'verifications')
  int verifications;

  @JsonKey(name: 'verification_list')
  List<Verification_list> verificationList;

  @JsonKey(name: 'verified')
  bool verified;

  @JsonKey(name: 'verified_type')
  int verifiedType;

  @JsonKey(name: 'verified_reason')
  String verifiedReason;

  @JsonKey(name: 'ac_camera')
  Ac_camera acCamera;

  @JsonKey(name: 'owner_tag')
  List<dynamic> ownerTag;

  @JsonKey(name: 'is_following')
  bool isFollowing;

  @JsonKey(name: 'is_follower')
  bool isFollower;

  Site(this.siteId,this.type,this.name,this.domain,this.url,this.icon,this.description,this.intro,this.posts,this.appearance,this.isBindEverphoto,this.hasEverphotoNote,this.followers,this.recommendReason,this.verifications,this.verificationList,this.verified,this.verifiedType,this.verifiedReason,this.acCamera,this.ownerTag,this.isFollowing,this.isFollower,);

  factory Site.fromJson(Map<String, dynamic> srcJson) => _$SiteFromJson(srcJson);

  Map<String, dynamic> toJson() => _$SiteToJson(this);

}


@JsonSerializable()
class Appearance extends Object {

  @JsonKey(name: 'color')
  String color;

  @JsonKey(name: 'image')
  String image;

  Appearance(this.color,this.image,);

  factory Appearance.fromJson(Map<String, dynamic> srcJson) => _$AppearanceFromJson(srcJson);

  Map<String, dynamic> toJson() => _$AppearanceToJson(this);

}


@JsonSerializable()
class Verification_list extends Object {

  @JsonKey(name: 'verification_type')
  int verificationType;

  @JsonKey(name: 'verification_reason')
  String verificationReason;

  Verification_list(this.verificationType,this.verificationReason,);

  factory Verification_list.fromJson(Map<String, dynamic> srcJson) => _$Verification_listFromJson(srcJson);

  Map<String, dynamic> toJson() => _$Verification_listToJson(this);

}


@JsonSerializable()
class Ac_camera extends Object {

  @JsonKey(name: 'obtained_num')
  int obtainedNum;

  Ac_camera(this.obtainedNum,);

  factory Ac_camera.fromJson(Map<String, dynamic> srcJson) => _$Ac_cameraFromJson(srcJson);

  Map<String, dynamic> toJson() => _$Ac_cameraToJson(this);

}


