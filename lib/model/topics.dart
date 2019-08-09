import 'package:json_annotation/json_annotation.dart';

part 'topics.g.dart';


@JsonSerializable()
class topics extends Object {

  @JsonKey(name: 'success')
  bool success;

  @JsonKey(name: 'data')
  List<Data> data;

  topics(this.success,this.data,);

  factory topics.fromJson(Map<String, dynamic> srcJson) => _$topicsFromJson(srcJson);

  Map<String, dynamic> toJson() => _$topicsToJson(this);

}


@JsonSerializable()
class Data extends Object {

  @JsonKey(name: 'id')
  String id;

  @JsonKey(name: 'author_id')
  String authorId;

  @JsonKey(name: 'tab')
  String tab;

  @JsonKey(name: 'content')
  String content;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'last_reply_at')
  String lastReplyAt;

  @JsonKey(name: 'good')
  bool good;

  @JsonKey(name: 'top')
  bool top;

  @JsonKey(name: 'reply_count')
  int replyCount;

  @JsonKey(name: 'visit_count')
  int visitCount;

  @JsonKey(name: 'create_at')
  String createAt;

  @JsonKey(name: 'author')
  Author author;

  Data(this.id,this.authorId,this.tab,this.content,this.title,this.lastReplyAt,this.good,this.top,this.replyCount,this.visitCount,this.createAt,this.author,);

  factory Data.fromJson(Map<String, dynamic> srcJson) => _$DataFromJson(srcJson);

  Map<String, dynamic> toJson() => _$DataToJson(this);

}


@JsonSerializable()
class Author extends Object {

  @JsonKey(name: 'loginname')
  String loginname;

  @JsonKey(name: 'avatar_url')
  String avatarUrl;

  Author(this.loginname,this.avatarUrl,);

  factory Author.fromJson(Map<String, dynamic> srcJson) => _$AuthorFromJson(srcJson);

  Map<String, dynamic> toJson() => _$AuthorToJson(this);

}


