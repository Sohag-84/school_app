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
    response =
        await http.get(Uri.parse("$apiUrl$postsEndpoint"));
    var data = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      postList.clear();
      for (Map i in data) {
        postList.add(PostModel.fromJson(i));
      }
      return postList;
    } else {
      return [];
    }
  }
}
