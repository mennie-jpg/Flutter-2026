import 'dart:convert'; 
import 'package:http/http.dart' as http;
import 'package:my_api/data/post_model.dart'; 

class PostRemoteDataSource {
  
  Future<List<PostModel>> getAllPosts() async {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/posts');

    final response = await http.get(url);
    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);     
      return data.map((json) => PostModel.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load posts: ${response.statusCode}');
    }
  }
}