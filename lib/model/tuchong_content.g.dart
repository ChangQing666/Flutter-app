// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tuchong_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

tuchong_content _$tuchong_contentFromJson(Map<String, dynamic> json) {
  return tuchong_content(
    (json['post_list'] as List)
        ?.map((e) =>
            e == null ? null : Post_list.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['result'] as String,
  );
}

Map<String, dynamic> _$tuchong_contentToJson(tuchong_content instance) =>
    <String, dynamic>{
      'post_list': instance.postList,
      'result': instance.result,
    };

Post_list _$Post_listFromJson(Map<String, dynamic> json) {
  return Post_list(
    json['post_id'] as int,
    json['author_id'] as String,
    json['type'] as String,
    json['url'] as String,
    json['published_at'] as String,
    json['excerpt'] as String,
    json['favorites'] as int,
    json['comments'] as int,
    json['title'] as String,
    json['image_count'] as int,
    json['rewardable'] as bool,
    json['rewards'] as int,
    json['wallpaper'] as bool,
    json['views'] as int,
    json['collected'] as bool,
    json['downloads'] as int,
    json['shares'] as int,
    json['collect_num'] as int,
    json['delete'] as bool,
    json['recommend'] as bool,
    json['content'] as String,
    json['update'] as bool,
    (json['images'] as List)
        ?.map((e) =>
            e == null ? null : Images.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['equip'] == null
        ? null
        : Equip.fromJson(json['equip'] as Map<String, dynamic>),
    json['title_image'] == null
        ? null
        : Title_image.fromJson(json['title_image'] as Map<String, dynamic>),
    json['tags'] as List,
    json['topics'] as List,
    (json['comment_list'] as List)
        ?.map((e) =>
            e == null ? null : Comment_list.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['users'] as List,
    json['site'] == null
        ? null
        : Site.fromJson(json['site'] as Map<String, dynamic>),
    json['is_favorite'] as bool,
    json['is_top'] as bool,
  );
}

Map<String, dynamic> _$Post_listToJson(Post_list instance) => <String, dynamic>{
      'post_id': instance.postId,
      'author_id': instance.authorId,
      'type': instance.type,
      'url': instance.url,
      'published_at': instance.publishedAt,
      'excerpt': instance.excerpt,
      'favorites': instance.favorites,
      'comments': instance.comments,
      'title': instance.title,
      'image_count': instance.imageCount,
      'rewardable': instance.rewardable,
      'rewards': instance.rewards,
      'wallpaper': instance.wallpaper,
      'views': instance.views,
      'collected': instance.collected,
      'downloads': instance.downloads,
      'shares': instance.shares,
      'collect_num': instance.collectNum,
      'delete': instance.delete,
      'recommend': instance.recommend,
      'content': instance.content,
      'update': instance.update,
      'images': instance.images,
      'equip': instance.equip,
      'title_image': instance.titleImage,
      'tags': instance.tags,
      'topics': instance.topics,
      'comment_list': instance.commentList,
      'users': instance.users,
      'site': instance.site,
      'is_favorite': instance.isFavorite,
      'is_top': instance.isTop,
    };

Images _$ImagesFromJson(Map<String, dynamic> json) {
  return Images(
    json['img_id'] as int,
    json['user_id'] as int,
    json['title'] as String,
    json['excerpt'] as String,
    json['width'] as int,
    json['height'] as int,
    json['description'] as String,
    json['isAuthorTK'] as bool,
  );
}

Map<String, dynamic> _$ImagesToJson(Images instance) => <String, dynamic>{
      'img_id': instance.imgId,
      'user_id': instance.userId,
      'title': instance.title,
      'excerpt': instance.excerpt,
      'width': instance.width,
      'height': instance.height,
      'description': instance.description,
      'isAuthorTK': instance.isAuthorTK,
    };

Equip _$EquipFromJson(Map<String, dynamic> json) {
  return Equip(
    json['display_name'] as String,
    json['equip_id'] as String,
  );
}

Map<String, dynamic> _$EquipToJson(Equip instance) => <String, dynamic>{
      'display_name': instance.displayName,
      'equip_id': instance.equipId,
    };

Title_image _$Title_imageFromJson(Map<String, dynamic> json) {
  return Title_image(
    json['width'] as int,
    json['height'] as int,
    json['url'] as String,
    json['img_id'] as int,
  );
}

Map<String, dynamic> _$Title_imageToJson(Title_image instance) =>
    <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
      'url': instance.url,
      'img_id': instance.imgId,
    };

Comment_list _$Comment_listFromJson(Map<String, dynamic> json) {
  return Comment_list(
    json['note_id'] as int,
    json['author'] == null
        ? null
        : Author.fromJson(json['author'] as Map<String, dynamic>),
    json['content'] as String,
    json['liked'] as bool,
    json['sub_notes'] as List,
  );
}

Map<String, dynamic> _$Comment_listToJson(Comment_list instance) =>
    <String, dynamic>{
      'note_id': instance.noteId,
      'author': instance.author,
      'content': instance.content,
      'liked': instance.liked,
      'sub_notes': instance.subNotes,
    };

Author _$AuthorFromJson(Map<String, dynamic> json) {
  return Author(
    json['site_id'] as String,
    json['type'] as String,
    json['name'] as String,
    json['domain'] as String,
    json['description'] as String,
    json['followers'] as int,
    json['url'] as String,
    json['icon'] as String,
    json['is_bind_everphoto'] as bool,
    json['has_everphoto_note'] as bool,
    json['verifications'] as int,
    json['verification_list'] as List,
    json['verified'] as bool,
    json['verified_type'] as int,
    json['verified_reason'] as String,
  );
}

Map<String, dynamic> _$AuthorToJson(Author instance) => <String, dynamic>{
      'site_id': instance.siteId,
      'type': instance.type,
      'name': instance.name,
      'domain': instance.domain,
      'description': instance.description,
      'followers': instance.followers,
      'url': instance.url,
      'icon': instance.icon,
      'is_bind_everphoto': instance.isBindEverphoto,
      'has_everphoto_note': instance.hasEverphotoNote,
      'verifications': instance.verifications,
      'verification_list': instance.verificationList,
      'verified': instance.verified,
      'verified_type': instance.verifiedType,
      'verified_reason': instance.verifiedReason,
    };

Verification_list _$Verification_listFromJson(Map<String, dynamic> json) {
  return Verification_list(
    json['verification_type'] as int,
    json['verification_reason'] as String,
  );
}

Map<String, dynamic> _$Verification_listToJson(Verification_list instance) =>
    <String, dynamic>{
      'verification_type': instance.verificationType,
      'verification_reason': instance.verificationReason,
    };

Site _$SiteFromJson(Map<String, dynamic> json) {
  return Site(
    json['site_id'] as int,
    json['type'] as String,
    json['name'] as String,
    json['domain'] as String,
    json['url'] as String,
    json['icon'] as String,
    json['description'] as String,
    json['intro'] as String,
    json['posts'] as int,
    json['appearance'] == null
        ? null
        : Appearance.fromJson(json['appearance'] as Map<String, dynamic>),
    json['is_bind_everphoto'] as bool,
    json['has_everphoto_note'] as bool,
    json['followers'] as int,
    json['recommend_reason'] as String,
    json['verifications'] as int,
    json['verification_list'] as List,
    json['verified'] as bool,
    json['verified_type'] as int,
    json['verified_reason'] as String,
    json['ac_camera'] == null
        ? null
        : Ac_camera.fromJson(json['ac_camera'] as Map<String, dynamic>),
    json['owner_tag'] as List,
    json['is_following'] as bool,
    json['is_follower'] as bool,
  );
}

Map<String, dynamic> _$SiteToJson(Site instance) => <String, dynamic>{
      'site_id': instance.siteId,
      'type': instance.type,
      'name': instance.name,
      'domain': instance.domain,
      'url': instance.url,
      'icon': instance.icon,
      'description': instance.description,
      'intro': instance.intro,
      'posts': instance.posts,
      'appearance': instance.appearance,
      'is_bind_everphoto': instance.isBindEverphoto,
      'has_everphoto_note': instance.hasEverphotoNote,
      'followers': instance.followers,
      'recommend_reason': instance.recommendReason,
      'verifications': instance.verifications,
      'verification_list': instance.verificationList,
      'verified': instance.verified,
      'verified_type': instance.verifiedType,
      'verified_reason': instance.verifiedReason,
      'ac_camera': instance.acCamera,
      'owner_tag': instance.ownerTag,
      'is_following': instance.isFollowing,
      'is_follower': instance.isFollower,
    };

Appearance _$AppearanceFromJson(Map<String, dynamic> json) {
  return Appearance(
    json['color'] as String,
    json['image'] as String,
  );
}

Map<String, dynamic> _$AppearanceToJson(Appearance instance) =>
    <String, dynamic>{
      'color': instance.color,
      'image': instance.image,
    };

Ac_camera _$Ac_cameraFromJson(Map<String, dynamic> json) {
  return Ac_camera(
    json['obtained_num'] as int,
  );
}

Map<String, dynamic> _$Ac_cameraToJson(Ac_camera instance) => <String, dynamic>{
      'obtained_num': instance.obtainedNum,
    };
