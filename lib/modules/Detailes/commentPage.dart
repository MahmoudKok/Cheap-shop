import 'package:comment_box/comment/comment.dart';
import 'package:flutter/material.dart';
import 'package:mytestapp2/MyColor.dart';
import 'package:mytestapp2/main.dart';
import 'package:mytestapp2/modules/Detailes/commentControler.dart';
import 'package:mytestapp2/modules/Detailes/detailspage.dart';
import 'package:get/get.dart';

CommentControler control = Get.put<CommentControler>(CommentControler());

class CommentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comments'),
        backgroundColor: Colors.deepOrangeAccent,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_sharp,
            color: Colors.white,
          ),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Container(
        child: CommentBox(
          userImage: 'assets/images/profile2.png',
          child: control.commentChild(control.filedata),
          labelText: 'Write a comment...',
          withBorder: false,
          errorText: 'Comment cannot be blank',
          sendButtonMethod: () {
            if (commentKey.currentState!.validate()) {
              print(commentController.text);
              control.sendComment(commentController.text);
              commentController.clear();
              FocusScope.of(context).unfocus();
            } else {
              print("Not validated");
            }
          },
          formKey: commentKey,
          commentController: commentController,
          backgroundColor: Colors.white10,
          textColor: Colors.black,
          sendWidget:
              Icon(Icons.send_sharp, size: 30, color: Colors.deepOrangeAccent),
        ),
      ),
    );
  }
}
