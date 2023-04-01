// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:school_app/constant/app_colors.dart';
import 'package:school_app/models/post_model.dart';
import 'package:school_app/services/api_services.dart';

class AddPostScreen extends StatefulWidget {
  final bool isUpdate;
  final PostModel? post;
  const AddPostScreen({Key? key, required this.isUpdate, this.post})
      : super(key: key);

  @override
  State<AddPostScreen> createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
  final titleController = TextEditingController();
  final bodyController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.isUpdate) {
      titleController.text = widget.post!.title!;
      bodyController.text = widget.post!.body!;
    }
  }

  @override
  void dispose() {
    super.dispose();
    titleController.dispose();
    bodyController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            widget.isUpdate == false ? Text("Add Post") : Text("Update Post"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              autofocus: true,
              textInputAction: TextInputAction.next,
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                hintText: "Title",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            TextField(
              controller: bodyController,
              maxLines: null,
              style: TextStyle(
                fontSize: 15.sp,
              ),
              decoration: InputDecoration(
                hintText: "Body",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
            ),
            SizedBox(height: 15.h),
            InkWell(
              onTap: () {
                if (titleController.text.trim().isNotEmpty &&
                    bodyController.text.trim().isNotEmpty) {
                  widget.isUpdate
                      ? ApiServices().updatePost(
                          title: titleController.text,
                          body: bodyController.text,
                          id: widget.post!.id,
                        )
                      : ApiServices().createPost(
                          title: titleController.text,
                          body: bodyController.text,
                        );

                  Get.back();
                } else {
                  Fluttertoast.showToast(msg: "Please filled all the field");
                }
              },
              child: Container(
                height: 45.h,
                decoration: BoxDecoration(
                  color: selectedColor,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Center(
                  child: Text(
                    widget.isUpdate == false ? "Add Post" : "Update Post",
                    style: TextStyle(color: Colors.white, fontSize: 16.sp),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
