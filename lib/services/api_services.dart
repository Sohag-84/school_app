import 'dart:convert';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:school_app/models/post_model.dart';

class ApiServices {
  final String apiUrl = 'https://jsonplaceholder.typicode.com';
  final String postsEndpoint = '/posts';

// Fetch all posts
  List<PostModel> postList = [];

  Future<List<PostModel>> getPostApi() async {
    http.Response response;
    response = await http.get(Uri.parse("$apiUrl$postsEndpoint"));
    var data = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      postList.clear();
      for (var i in data) {
        postList.add(PostModel.fromJson(i));
      }
      return postList;
    } else {
      return [];
    }
  }

// Create a new post
  Future<void> createPost({required title, required body}) async {
    http.Response response = await http.post(
      Uri.parse('$apiUrl$postsEndpoint'),
      body: jsonEncode({
        'title': title,
        'body': body,
        'userId': 1,
      }),
      headers: {
        'Content-type': 'application/json; charset=UTF-8',
      },
    );

    if (response.statusCode == 201) {
      Fluttertoast.showToast(msg: 'Post created successfully');
    } else {
      throw Exception('Failed to create post');
    }
  }

// Update a post
  Future<void> updatePost({required title, required body, required id}) async {
    http.Response response = await http.put(
      Uri.parse('$apiUrl$postsEndpoint/$id'),
      body: jsonEncode({
        'title': title,
        'body': body,
      }),
      headers: {
        'Content-type': 'application/json; charset=UTF-8',
      },
    );

    if (response.statusCode == 200) {
      Fluttertoast.showToast(msg: "Post updated");
    } else {
      Fluttertoast.showToast(msg: "Something is wrong!");
    }
  }

// Delete a post
  Future<void> deletePost(postId) async {
    http.Response response = await http.delete(
      Uri.parse('$apiUrl$postsEndpoint/$postId'),
    );

    if (response.statusCode == 200) {
      Fluttertoast.showToast(msg: 'Post deleted successfully');
    } else {
      throw Exception('Failed to delete post');
    }
  }
}
