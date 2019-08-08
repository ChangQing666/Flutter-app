class Api {
  static const String BASE_URL = 'http://baobab.kaiyanapp.com/api';

  static const String CATEGORIES = BASE_URL + '/v4/categories/all'; // 全部分类

  static const String  RANKLIST = BASE_URL + '/v4/rankList/'; // 排行列表

  static const String RANKLIST_WEEKLY = BASE_URL + '/v4/rankList/videos?strategy=weekly'; // 周排行

  static const String RANKLIST_MONTHLY = BASE_URL + '/v4/rankList/videos?strategy=monthly'; // 月排行

  static const String RANKLIST_HISTORICAL = BASE_URL + '/v4/rankList/videos?strategy=historical'; // 总排行

  static const String ALL_REC = BASE_URL + '/v5/index/tab/allRec'; // 推荐

  static const String REPLIES = BASE_URL + '/v1/replies/video?id=166550'; // 评论 /v1/replies/video?id=166550

  static const String RELATED = BASE_URL + '/v4/video/related?id=166550'; // 相关视频

}