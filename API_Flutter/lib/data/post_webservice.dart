import 'package:dio/dio.dart';
import 'package:my_api/data/post_model.dart';
import 'package:retrofit/retrofit.dart';

part 'post_webservice.g.dart';
@RestApi(baseUrl: "https://69ed44faaf4ff533142bafff.mockapi.io/api/v1/")

abstract class PostWebservice {
 factory PostWebservice(Dio dio,{String baseUrl}) = _PostWebservice;
 
 @GET('posts')
 Future<List<PostModel>> getAllPosts();

  @GET('posts/{postId}')
 Future<PostModel> getPostByID(@Path() String postId);

 @POST('posts')
 Future<PostModel> createPost(
  @Body() PostModel newPost , @Header('Authorization') String token
 );

  @DELETE('posts/{postId}')
 Future<PostModel> deletePost(@Path() String postId);

  
}