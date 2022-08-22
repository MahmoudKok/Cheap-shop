import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mytestapp2/modules/Add%20Products/addProduct.dart';
import 'package:mytestapp2/modules/Home/Home.dart';
import 'package:mytestapp2/modules/Profile/profile.dart';

class BotoCont extends GetxController {
  final screen = [
    Home(),
     Addproduct(),
    Profile(),
  ];
  move(int i) {}
}
