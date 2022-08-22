import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytestapp2/modules/Add%20Products/addProductControler.dart';
import 'package:mytestapp2/modules/Detailes/detailesControler.dart';
import 'package:mytestapp2/modules/EditProduct/editpage.dart';

DetailesControler deco = Get.put<DetailesControler>(DetailesControler());
AddproductControler addcon =
    Get.put<AddproductControler>(AddproductControler());

class EditControler extends GetxController {
  var namePro = TextEditingController().obs;
  var pricePro = TextEditingController().obs;
  var descPro = TextEditingController().obs;

  var per1Pro = TextEditingController().obs;
  var per2Pro = TextEditingController().obs;
  var per3Pro = TextEditingController().obs;

  var off1Pro = TextEditingController().obs;
  var off2Pro = TextEditingController().obs;
  var off3Pro = TextEditingController().obs;

  var phone = TextEditingController().obs;
  var email = TextEditingController().obs;
  var facebook = TextEditingController().obs;

  var numb = 0.0.obs;
  var cata = ''.obs;
  var expodate = DateTime(2021).obs;
  var photo;

  Function? addNum() {
    numb.value++;
  }

  Function? subNum() {
    numb.value--;
  }

  void de() {
    namePro.value.text = deco.name.value;
    pricePro.value.text = deco.price.value.toString();
    descPro.value.text = deco.descr.value;

    numb.value = deco.quanit.value;
    cata.value = deco.categiores.value;
    expodate.value = deco.expodate.value;

    per1Pro.value.text = addcon.per1.value;
    per2Pro.value.text = addcon.per2.value;
    per2Pro.value.text = addcon.per3.value;

    off1Pro.value.text = addcon.off1.value;
    off2Pro.value.text = addcon.off2.value;
    off3Pro.value.text = addcon.off3.value;

    phone.value.text = deco.infPhone.value;
    email.value.text = deco.infEmail.value;
    facebook.value.text = deco.infFacebook.value;
  }
}
