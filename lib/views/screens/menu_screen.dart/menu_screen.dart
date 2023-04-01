// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school_app/models/post_model.dart';
import 'package:school_app/services/api_services.dart';

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
                        width: 80.w,
                        child: Row(
                          children: [
                            IconButton(onPressed: null, icon: Icon(Icons.edit)),
                            IconButton(
                                onPressed: null, icon: Icon(Icons.delete)),
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
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
