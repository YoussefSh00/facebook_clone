class PostsModel {
  final int id;
  final String body;

  PostsModel({required this.id, required this.body});
  factory PostsModel.fromJson(json) {
    return PostsModel(id: json["id"], body: json["body"]);
  }
}
