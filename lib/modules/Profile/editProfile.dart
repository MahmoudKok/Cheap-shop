import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytestapp2/modules/Profile/profile.dart';
import 'package:mytestapp2/modules/Profile/profileControler.dart';

import '../../MyColor.dart';

ProfileControler proControl = Get.put<ProfileControler>(ProfileControler());
TextEditingController? namecontrol = new TextEditingController(text: '');

final editProfileKey = GlobalKey<FormState>();

class EditProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    proControl.setProfile();
    final hi = MediaQuery.of(context).size.height;
    final wi = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: maincolor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: hi * .4,
                width: wi,
                color: maincolor,
                child: Center(
                  child: CircleAvatar(
                    backgroundImage: new AssetImage('assets/images/kok.jpg'),
                    radius: 75,
                  ),
                ),
              ),
              Container(
                height: hi * .6,
                width: wi,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: wi * .02, top: hi * .1),
                        child: Text(
                          'Edit your informations',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Form(
                        key: editProfileKey,
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(30, 50, 30, 30),
                              child: TextFormField(
                                controller: proControl.profileName.value,
                                validator: (value) {
                                  if (value!.isEmpty ||
                                      !(RegExp(r'^[a-z A-Z]+$'))
                                          .hasMatch(value)) {
                                    return 'enter corect name';
                                  } else
                                    return null;
                                },
                                decoration: InputDecoration(
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.auto,
                                  prefixIcon: Icon(Icons.edit),
                                  filled: true,
                                  fillColor: Colors.orange.withAlpha(10),
                                  border: OutlineInputBorder(),
                                  labelText: 'Name',
                                  hintText: 'Enter your new name',
                                  labelStyle: TextStyle(),
                                  hintStyle: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(30, 10, 30, 30),
                              child: TextFormField(
                                controller: proControl.profilePassword.value,
                                validator: (value) {
                                  if (value!.isEmpty || value.length < 8) {
                                    return 'enter correct Password';
                                  } else
                                    return null;
                                },
                                decoration: InputDecoration(
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.auto,
                                  prefixIcon: Icon(Icons.edit),
                                  filled: true,
                                  fillColor: Colors.orange.withAlpha(10),
                                  border: OutlineInputBorder(),
                                  labelText: 'Password',
                                  hintText: 'Enter your new password',
                                  labelStyle: TextStyle(),
                                  hintStyle: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                        child: Container(
                          height: 50,
                          width: 200,
                          decoration: BoxDecoration(
                            color: maincolor,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Center(
                            child: Text(
                              'Save',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        onTap: () {
                          if (editProfileKey.currentState!.validate()) {
                            Get.back();
                          }
                        },
                      ),
                      SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
