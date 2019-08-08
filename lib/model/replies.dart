class Replies {
    int count;
    int total;
    String nextPageUrl;

    Replies({
      this.count,
      this.total,
      this.nextPageUrl,
    });

    factory Replies.fromJson(Map<String, dynamic> json) {
      return Replies(
          count: json['count'],
          total: int.parse(json['total']),
          nextPageUrl: json['nextPageUrl'],
      );
    }
}