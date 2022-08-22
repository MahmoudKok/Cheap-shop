import 'package:get/get.dart';
import 'package:mytestapp2/productsModel.dart';
import 'package:flutter/material.dart';

class ProfileControler extends GetxController {
  var name = 'Mahmoud kok'.obs;
  var off = 0.0.obs;
  var price = 0.0.obs;
  var image = ''.obs;
  var likes = 0.obs;
  var view = 0.obs;
  var color;
  var password = '12345678'.obs;

  var profilePassword = TextEditingController().obs;
  var profileName = TextEditingController().obs;

  void setProfile() {
    profileName.value.text = name.value;
    profilePassword.value.text = password.value;
  }
}
