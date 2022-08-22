import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytestapp2/compo.dart';
import 'package:mytestapp2/getx_binding/detailsBinding.dart';
import 'package:mytestapp2/modules/Detailes/detailspage.dart';

class DetailesControler extends GetxController {
  var id = 0.obs;
  var userid = 0.obs;
  var isVisble = false.obs;
  var likes = 90.obs;
  var colo = false.obs;

  var name = 'TABASCO'.obs;
  var view = 146.obs;

  var price = 12.0.obs;
  var off = 30.0.obs;
  var quanit = 20.0.obs;

  var categiores = 'Food'.obs;
  var descr =
      'A delicious Mexican hot\npepper sauce , Is very good for cooking\n it is the best for barbecue!'
          .obs;
  var infPhone = '0954850462'.obs;
  var infEmail = 'Mahmoudkoka39@gmail.com'.obs;
  var infFacebook = 'محمود كوكة'.obs;

  var expodate = DateTime(2021).obs;

  Function? turnheart() {
    if (colo.value) {
      --likes.value;
    } else {
      ++likes.value;
    }
    update();
  }

  void checkuser() {
    if (id.value == userid.value) {
      isVisble.value = true;
      print('ok');
    }
    /* if (userid.value == 0) {
      userid++;
      print(userid.value);
      print('Ok');
    }
    if (id.value == userid.value) {
      isVisble.value = true;
      return isVisble.value;
    } else {
      isVisble.value = false;
      return isVisble.value;
    } */
    else {
      isVisble.value = false;
      print('Fuck');
    }
  }

  /* void test1() {
    if (id.value == userid.value) {
      ++id.value;
      print('ok');
    } else
      --id.value;
  } */

  deletProduct(int proId) {}

  editProduct(int proId) {}

  /*  getDetailes(int i) {
    /* id.value = i;
    name.value = product[i].name;
    likes.value = product[i].likes;
    view.value = product[i].view;
    price.value = product[i].price;
    off.value = product[i].off;
    quanit.value = product[i].numb;
    expodate.value = product[i].expodate;
    categiores.value = product[i].cata;
    descr.value = product[i].desc;
    infPhone.value = product[i].phone;
    infFacebook.value = product[i].facebook;
    infEmail.value = product[i].email; */

    Get.to(Detailespage());
  } */
}
