import 'package:dio/dio.dart';
import 'package:facebook_clone/models/posts_model.dart';

class PostsService {
  Future<List<PostsModel>> getAllPosts() async {
    var respones =
        await Dio().get("https://jsonplaceholder.typicode.com/posts");
    List responesBody = respones.data;
    return responesBody.map((e) => PostsModel.fromJson(e)).toList();
  }
}
