import 'dart:convert';
import 'dart:async';
class related {
    bool adExist;
    int count;
    List<Item> itemList;
    Object nextPageUrl;
    int total;

    related({this.adExist, this.count, this.itemList, this.nextPageUrl, this.total});

    factory related.fromJson(Map<String, dynamic> json) {
        return related(
            adExist: json['adExist'],
            count: json['count'],
            itemList: json['itemList'] != null ? (json['itemList'] as List).map((i) => Item.fromJson(i)).toList() : null,
            nextPageUrl: json['nextPageUrl'] != null ? Object.fromJson(json['nextPageUrl']) : null,
            total: json['total'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['adExist'] = this.adExist;
        data['count'] = this.count;
        data['total'] = this.total;
        if (this.itemList != null) {
            data['itemList'] = this.itemList.map((v) => v.toJson()).toList();
        }
        if (this.nextPageUrl != null) {
            data['nextPageUrl'] = this.nextPageUrl.toJson();
        }
        return data;
    }
}

class Item {
    Data `data`;
    int adIndex;
    int id;
    Object tag;
    String type;

    Item({this.`data`, this.adIndex, this.id, this.tag, this.type});

    factory Item.fromJson(Map<String, dynamic> json) {
        return Item(
            `data`: json['`data`'] != null ? Data.fromJson(json['`data`']) : null,
            adIndex: json['adIndex'],
            id: json['id'],
            tag: json['tag'] != null ? Object.fromJson(json['tag']) : null,
            type: json['type'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['adIndex'] = this.adIndex;
        data['id'] = this.id;
        data['type'] = this.type;
        if (this.`data` != null) {
            data['`data`'] = this.`data`.toJson();
        }
        if (this.tag != null) {
            data['tag'] = this.tag.toJson();
        }
        return data;
    }
}

class Data {
    bool ad;
    Object adTrack;
    Author author;
    Object campaign;
    String category;
    bool collected;
    Consumption consumption;
    Cover cover;
    String dataType;
    int date;
    String description;
    String descriptionEditor;
    String descriptionPgc;
    int duration;
    Object favoriteAdTrack;
    int id;
    int idx;
    bool ifLimitVideo;
    Object label;
    List<Object> labelList;
    Object lastViewTime;
    String library;
    List<PlayInfo> playInfo;
    String playUrl;
    bool played;
    Object playlists;
    Object promotion;
    Provider provider;
    int releaseTime;
    Object remark;
    String resourceType;
    int searchWeight;
    Object shareAdTrack;
    Object slogan;
    Object src;
    List<Object> subtitles;
    List<Tag> tags;
    Object thumbPlayUrl;
    String title;
    String titlePgc;
    String type;
    Object waterMarks;
    Object webAdTrack;
    WebUrl webUrl;

    Data({this.ad, this.adTrack, this.author, this.campaign, this.category, this.collected, this.consumption, this.cover, this.dataType, this.date, this.description, this.descriptionEditor, this.descriptionPgc, this.duration, this.favoriteAdTrack, this.id, this.idx, this.ifLimitVideo, this.label, this.labelList, this.lastViewTime, this.library, this.playInfo, this.playUrl, this.played, this.playlists, this.promotion, this.provider, this.releaseTime, this.remark, this.resourceType, this.searchWeight, this.shareAdTrack, this.slogan, this.src, this.subtitles, this.tags, this.thumbPlayUrl, this.title, this.titlePgc, this.type, this.waterMarks, this.webAdTrack, this.webUrl});

    factory Data.fromJson(Map<String, dynamic> json) {
        return Data(
            ad: json['ad'],
            adTrack: json['adTrack'] != null ? Object.fromJson(json['adTrack']) : null,
            author: json['author'] != null ? Author.fromJson(json['author']) : null,
            campaign: json['campaign'] != null ? Object.fromJson(json['campaign']) : null,
            category: json['category'],
            collected: json['collected'],
            consumption: json['consumption'] != null ? Consumption.fromJson(json['consumption']) : null,
            cover: json['cover'] != null ? Cover.fromJson(json['cover']) : null,
            dataType: json['dataType'],
            date: json['date'],
            description: json['description'],
            descriptionEditor: json['descriptionEditor'],
            descriptionPgc: json['descriptionPgc'],
            duration: json['duration'],
            favoriteAdTrack: json['favoriteAdTrack'] != null ? Object.fromJson(json['favoriteAdTrack']) : null,
            id: json['id'],
            idx: json['idx'],
            ifLimitVideo: json['ifLimitVideo'],
            label: json['label'] != null ? Object.fromJson(json['label']) : null,
            labelList: json['labelList'] != null ? (json['labelList'] as List).map((i) => Object.fromJson(i)).toList() : null,
            lastViewTime: json['lastViewTime'] != null ? Object.fromJson(json['lastViewTime']) : null,
            library: json['library'],
            playInfo: json['playInfo'] != null ? (json['playInfo'] as List).map((i) => PlayInfo.fromJson(i)).toList() : null,
            playUrl: json['playUrl'],
            played: json['played'],
            playlists: json['playlists'] != null ? Object.fromJson(json['playlists']) : null,
            promotion: json['promotion'] != null ? Object.fromJson(json['promotion']) : null,
            provider: json['provider'] != null ? Provider.fromJson(json['provider']) : null,
            releaseTime: json['releaseTime'],
            remark: json['remark'] != null ? Object.fromJson(json['remark']) : null,
            resourceType: json['resourceType'],
            searchWeight: json['searchWeight'],
            shareAdTrack: json['shareAdTrack'] != null ? Object.fromJson(json['shareAdTrack']) : null,
            slogan: json['slogan'] != null ? Object.fromJson(json['slogan']) : null,
            src: json['src'] != null ? Object.fromJson(json['src']) : null,
            subtitles: json['subtitles'] != null ? (json['subtitles'] as List).map((i) => Object.fromJson(i)).toList() : null,
            tags: json['tags'] != null ? (json['tags'] as List).map((i) => Tag.fromJson(i)).toList() : null,
            thumbPlayUrl: json['thumbPlayUrl'] != null ? Object.fromJson(json['thumbPlayUrl']) : null,
            title: json['title'],
            titlePgc: json['titlePgc'],
            type: json['type'],
            waterMarks: json['waterMarks'] != null ? Object.fromJson(json['waterMarks']) : null,
            webAdTrack: json['webAdTrack'] != null ? Object.fromJson(json['webAdTrack']) : null,
            webUrl: json['webUrl'] != null ? WebUrl.fromJson(json['webUrl']) : null,
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['ad'] = this.ad;
        data['category'] = this.category;
        data['collected'] = this.collected;
        data['dataType'] = this.dataType;
        data['date'] = this.date;
        data['description'] = this.description;
        data['descriptionEditor'] = this.descriptionEditor;
        data['descriptionPgc'] = this.descriptionPgc;
        data['duration'] = this.duration;
        data['id'] = this.id;
        data['idx'] = this.idx;
        data['ifLimitVideo'] = this.ifLimitVideo;
        data['library'] = this.library;
        data['playUrl'] = this.playUrl;
        data['played'] = this.played;
        data['releaseTime'] = this.releaseTime;
        data['resourceType'] = this.resourceType;
        data['searchWeight'] = this.searchWeight;
        data['title'] = this.title;
        data['titlePgc'] = this.titlePgc;
        data['type'] = this.type;
        if (this.adTrack != null) {
            data['adTrack'] = this.adTrack.toJson();
        }
        if (this.author != null) {
            data['author'] = this.author.toJson();
        }
        if (this.campaign != null) {
            data['campaign'] = this.campaign.toJson();
        }
        if (this.consumption != null) {
            data['consumption'] = this.consumption.toJson();
        }
        if (this.cover != null) {
            data['cover'] = this.cover.toJson();
        }
        if (this.favoriteAdTrack != null) {
            data['favoriteAdTrack'] = this.favoriteAdTrack.toJson();
        }
        if (this.label != null) {
            data['label'] = this.label.toJson();
        }
        if (this.labelList != null) {
            data['labelList'] = this.labelList.map((v) => v.toJson()).toList();
        }
        if (this.lastViewTime != null) {
            data['lastViewTime'] = this.lastViewTime.toJson();
        }
        if (this.playInfo != null) {
            data['playInfo'] = this.playInfo.map((v) => v.toJson()).toList();
        }
        if (this.playlists != null) {
            data['playlists'] = this.playlists.toJson();
        }
        if (this.promotion != null) {
            data['promotion'] = this.promotion.toJson();
        }
        if (this.provider != null) {
            data['provider'] = this.provider.toJson();
        }
        if (this.remark != null) {
            data['remark'] = this.remark.toJson();
        }
        if (this.shareAdTrack != null) {
            data['shareAdTrack'] = this.shareAdTrack.toJson();
        }
        if (this.slogan != null) {
            data['slogan'] = this.slogan.toJson();
        }
        if (this.src != null) {
            data['src'] = this.src.toJson();
        }
        if (this.subtitles != null) {
            data['subtitles'] = this.subtitles.map((v) => v.toJson()).toList();
        }
        if (this.tags != null) {
            data['tags'] = this.tags.map((v) => v.toJson()).toList();
        }
        if (this.thumbPlayUrl != null) {
            data['thumbPlayUrl'] = this.thumbPlayUrl.toJson();
        }
        if (this.waterMarks != null) {
            data['waterMarks'] = this.waterMarks.toJson();
        }
        if (this.webAdTrack != null) {
            data['webAdTrack'] = this.webAdTrack.toJson();
        }
        if (this.webUrl != null) {
            data['webUrl'] = this.webUrl.toJson();
        }
        return data;
    }
}

class Cover {
    String blurred;
    String detail;
    String feed;
    Object homepage;
    Object sharing;

    Cover({this.blurred, this.detail, this.feed, this.homepage, this.sharing});

    factory Cover.fromJson(Map<String, dynamic> json) {
        return Cover(
            blurred: json['blurred'],
            detail: json['detail'],
            feed: json['feed'],
            homepage: json['homepage'] != null ? Object.fromJson(json['homepage']) : null,
            sharing: json['sharing'] != null ? Object.fromJson(json['sharing']) : null,
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['blurred'] = this.blurred;
        data['detail'] = this.detail;
        data['feed'] = this.feed;
        if (this.homepage != null) {
            data['homepage'] = this.homepage.toJson();
        }
        if (this.sharing != null) {
            data['sharing'] = this.sharing.toJson();
        }
        return data;
    }
}

class PlayInfo {
    int height;
    String name;
    String type;
    String url;
    List<Url> urlList;
    int width;

    PlayInfo({this.height, this.name, this.type, this.url, this.urlList, this.width});

    factory PlayInfo.fromJson(Map<String, dynamic> json) {
        return PlayInfo(
            height: json['height'],
            name: json['name'],
            type: json['type'],
            url: json['url'],
            urlList: json['urlList'] != null ? (json['urlList'] as List).map((i) => Url.fromJson(i)).toList() : null,
            width: json['width'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['height'] = this.height;
        data['name'] = this.name;
        data['type'] = this.type;
        data['url'] = this.url;
        data['width'] = this.width;
        if (this.urlList != null) {
            data['urlList'] = this.urlList.map((v) => v.toJson()).toList();
        }
        return data;
    }
}

class Url {
    String name;
    int size;
    String url;

    Url({this.name, this.size, this.url});

    factory Url.fromJson(Map<String, dynamic> json) {
        return Url(
            name: json['name'],
            size: json['size'],
            url: json['url'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['name'] = this.name;
        data['size'] = this.size;
        data['url'] = this.url;
        return data;
    }
}

class Tag {
    String actionUrl;
    Object adTrack;
    String bgPicture;
    Object childTagIdList;
    Object childTagList;
    int communityIndex;
    String desc;
    String headerImage;
    int id;
    String name;
    String tagRecType;

    Tag({this.actionUrl, this.adTrack, this.bgPicture, this.childTagIdList, this.childTagList, this.communityIndex, this.desc, this.headerImage, this.id, this.name, this.tagRecType});

    factory Tag.fromJson(Map<String, dynamic> json) {
        return Tag(
            actionUrl: json['actionUrl'],
            adTrack: json['adTrack'] != null ? Object.fromJson(json['adTrack']) : null,
            bgPicture: json['bgPicture'],
            childTagIdList: json['childTagIdList'] != null ? Object.fromJson(json['childTagIdList']) : null,
            childTagList: json['childTagList'] != null ? Object.fromJson(json['childTagList']) : null,
            communityIndex: json['communityIndex'],
            desc: json['desc'],
            headerImage: json['headerImage'],
            id: json['id'],
            name: json['name'],
            tagRecType: json['tagRecType'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['actionUrl'] = this.actionUrl;
        data['bgPicture'] = this.bgPicture;
        data['communityIndex'] = this.communityIndex;
        data['desc'] = this.desc;
        data['headerImage'] = this.headerImage;
        data['id'] = this.id;
        data['name'] = this.name;
        data['tagRecType'] = this.tagRecType;
        if (this.adTrack != null) {
            data['adTrack'] = this.adTrack.toJson();
        }
        if (this.childTagIdList != null) {
            data['childTagIdList'] = this.childTagIdList.toJson();
        }
        if (this.childTagList != null) {
            data['childTagList'] = this.childTagList.toJson();
        }
        return data;
    }
}

class Consumption {
    int collectionCount;
    int replyCount;
    int shareCount;

    Consumption({this.collectionCount, this.replyCount, this.shareCount});

    factory Consumption.fromJson(Map<String, dynamic> json) {
        return Consumption(
            collectionCount: json['collectionCount'],
            replyCount: json['replyCount'],
            shareCount: json['shareCount'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['collectionCount'] = this.collectionCount;
        data['replyCount'] = this.replyCount;
        data['shareCount'] = this.shareCount;
        return data;
    }
}

class Provider {
    String alias;
    String icon;
    String name;

    Provider({this.alias, this.icon, this.name});

    factory Provider.fromJson(Map<String, dynamic> json) {
        return Provider(
            alias: json['alias'],
            icon: json['icon'],
            name: json['name'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['alias'] = this.alias;
        data['icon'] = this.icon;
        data['name'] = this.name;
        return data;
    }
}

class WebUrl {
    String forWeibo;
    String raw;

    WebUrl({this.forWeibo, this.raw});

    factory WebUrl.fromJson(Map<String, dynamic> json) {
        return WebUrl(
            forWeibo: json['forWeibo'],
            raw: json['raw'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['forWeibo'] = this.forWeibo;
        data['raw'] = this.raw;
        return data;
    }
}

class Author {
    Object adTrack;
    int approvedNotReadyVideoCount;
    String description;
    bool expert;
    Follow follow;
    String icon;
    int id;
    bool ifPgc;
    int latestReleaseTime;
    String link;
    String name;
    int recSort;
    Shield shield;
    int videoNum;

    Author({this.adTrack, this.approvedNotReadyVideoCount, this.description, this.expert, this.follow, this.icon, this.id, this.ifPgc, this.latestReleaseTime, this.link, this.name, this.recSort, this.shield, this.videoNum});

    factory Author.fromJson(Map<String, dynamic> json) {
        return Author(
            adTrack: json['adTrack'] != null ? Object.fromJson(json['adTrack']) : null,
            approvedNotReadyVideoCount: json['approvedNotReadyVideoCount'],
            description: json['description'],
            expert: json['expert'],
            follow: json['follow'] != null ? Follow.fromJson(json['follow']) : null,
            icon: json['icon'],
            id: json['id'],
            ifPgc: json['ifPgc'],
            latestReleaseTime: json['latestReleaseTime'],
            link: json['link'],
            name: json['name'],
            recSort: json['recSort'],
            shield: json['shield'] != null ? Shield.fromJson(json['shield']) : null,
            videoNum: json['videoNum'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['approvedNotReadyVideoCount'] = this.approvedNotReadyVideoCount;
        data['description'] = this.description;
        data['expert'] = this.expert;
        data['icon'] = this.icon;
        data['id'] = this.id;
        data['ifPgc'] = this.ifPgc;
        data['latestReleaseTime'] = this.latestReleaseTime;
        data['link'] = this.link;
        data['name'] = this.name;
        data['recSort'] = this.recSort;
        data['videoNum'] = this.videoNum;
        if (this.adTrack != null) {
            data['adTrack'] = this.adTrack.toJson();
        }
        if (this.follow != null) {
            data['follow'] = this.follow.toJson();
        }
        if (this.shield != null) {
            data['shield'] = this.shield.toJson();
        }
        return data;
    }
}

class Shield {
    int itemId;
    String itemType;
    bool shielded;

    Shield({this.itemId, this.itemType, this.shielded});

    factory Shield.fromJson(Map<String, dynamic> json) {
        return Shield(
            itemId: json['itemId'],
            itemType: json['itemType'],
            shielded: json['shielded'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['itemId'] = this.itemId;
        data['itemType'] = this.itemType;
        data['shielded'] = this.shielded;
        return data;
    }
}

class Follow {
    bool followed;
    int itemId;
    String itemType;

    Follow({this.followed, this.itemId, this.itemType});

    factory Follow.fromJson(Map<String, dynamic> json) {
        return Follow(
            followed: json['followed'],
            itemId: json['itemId'],
            itemType: json['itemType'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['followed'] = this.followed;
        data['itemId'] = this.itemId;
        data['itemType'] = this.itemType;
        return data;
    }
}