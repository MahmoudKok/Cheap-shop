import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytestapp2/modules/Detailes/commentPage.dart';

final commentKey = GlobalKey<FormState>();
final TextEditingController commentController = TextEditingController(text: "");

class CommentControler extends GetxController {
  List filedata = [
    {
      'name': 'Abdullah Ha',
      'message': 'I love this sauce!',
    },
    {
      'name': 'Sara sy',
      'message': 'Very cute',
    },
    {
      'name': 'Max hamed',
      'message': 'it\'s the BEST!',
    },
    {
      'name': 'layal Bahaa',
      'message': 'I hope still some :(',
    },
  ].obs;

  sendComment(String txt) {
    var value = {
      'name': 'New User',
      'message': txt,
    };
    filedata.insert(0, value);
  }

  Widget commentChild(data) {
    return ListView(
      children: [
        for (var i = 0; i < data.length; i++)
          Padding(
            padding: const EdgeInsets.fromLTRB(2.0, 8.0, 2.0, 0.0),
            child: ListTile(
              leading: GestureDetector(
                onTap: () async {
                  // Display the image in large form.
                  print("Comment Clicked");
                },
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: new BoxDecoration(
                      color: Colors.red,
                      borderRadius: new BorderRadius.all(Radius.circular(50))),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                  ),
                ),
              ),
              title: Text(
                data[i]['name'],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(data[i]['message']),
            ),
          )
      ],
    );
  }
}
