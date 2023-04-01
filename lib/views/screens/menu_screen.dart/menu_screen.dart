// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school_app/models/post_model.dart';
import 'package:school_app/services/api_services.dart';

import 'components/add_post_screen.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
          future: ApiServices().getPostApi(),
          builder: (context, AsyncSnapshot snapshot) {
            if (!snapshot.hasData) {
              return Center(child: CircularProgressIndicator());
            } else {
              return ListView.builder(
                  itemCount: snapshot.data.length ?? 0,
                  itemBuilder: (context, index) {
                    PostModel data = snapshot.data[index];
                    return ListTile(
                      leading: CircleAvatar(child: Text(data.id.toString())),
                      title: Text(data.title.toString()),
                      subtitle: Text(data.body.toString()),
                      trailing: SizedBox(
                        width: 100.w,
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                    fullscreenDialog: true,
                                    builder: (context) => AddPostScreen(
                                        post: data, isUpdate: true),
                                  ),
                                );
                              },
                              icon: Icon(Icons.edit),
                            ),
                            IconButton(
                                onPressed: () {
                                  ApiServices().deletePost(data);
                                },
                                icon: Icon(Icons.delete)),
                          ],
                        ),
                      ),
                    );
                  });
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            CupertinoPageRoute(
              fullscreenDialog: true,
              builder: (context) => AddPostScreen(isUpdate: false),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
