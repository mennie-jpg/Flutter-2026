import 'package:my_api/data/post_model.dart';
import 'package:my_api/data/post_webservice.dart';

class PostRepo {
  final PostWebservice postWebservice;
  PostRepo(this.postWebservice);

  Future<List<PostModel>> getAllPosts() async { 
    return postWebservice.getAllPosts();
  }

  Future<PostModel> getPostByID(String postId) async {
    return postWebservice.getPostByID(postId);
  }

  Future<PostModel> createPost(PostModel newPost, String token) async {
    return postWebservice.createPost(newPost, token);
  }

  Future<PostModel> deletePost(String postId) async {
    return postWebservice.deletePost(postId);
  }
}
