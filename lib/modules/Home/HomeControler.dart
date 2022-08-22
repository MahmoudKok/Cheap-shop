import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytestapp2/MyColor.dart';
import 'package:mytestapp2/compo.dart';
import 'package:mytestapp2/modules/Detailes/detailesControler.dart';
import 'package:mytestapp2/modules/Detailes/detailspage.dart';
import 'package:mytestapp2/modules/Home/Home.dart';
import 'package:mytestapp2/modules/Home/searchResult.dart';

DetailesControler de = Get.put<DetailesControler>(DetailesControler());

class HomeControler extends GetxController {
  var listIndex = 0.obs;
  var sortAlphaIcon = true.obs;
  var sortA = 'All'.obs;
  var dateSearch = DateTime(2021).obs;
  gotoDate() {
    Get.to(SearchResult());
  }

  List<List<Widget>> all = [
    ProductsLists.mp,
    [
      ProductMainCard(
        name: 'Ayam brand',
        off: 30,
        price: 12,
        photo: 'assets/images/1.png',
        view: 63,
        backColor: Colors.amber.shade100,
      ),
      ProductMainCard(
        name: 'Tapasco',
        off: 70,
        price: 20.7,
        photo: 'assets/images/2.png',
        view: 145,
        backColor: Colors.redAccent.shade100,
      ),
    ].obs,
    [
      ProductMainCard(
        name: 'Tapasco',
        off: 70,
        price: 20.7,
        photo: 'assets/images/2.png',
        view: 145,
        backColor: Colors.redAccent.shade100,
      ),
      ProductMainCard(
        name: 'Ayam brand',
        off: 30,
        price: 12,
        photo: 'assets/images/1.png',
        view: 63,
        backColor: Colors.amber.shade100,
      ),
    ].obs,
    [
      ProductMainCard(
        name: 'Heinz beanz',
        off: 50,
        price: 20.1,
        photo: 'assets/images/5.png',
        view: 78,
        backColor: Color(0xFFAAFFFE),
      ),
      ProductMainCard(
        name: 'Heinz beanz',
        off: 50,
        price: 20.1,
        photo: 'assets/images/5.png',
        view: 78,
        backColor: Color(0xFFAAFFFE),
      ),
    ].obs
  ].obs;
  updateIndex(name) {
    if (name == 'All') listIndex.value = 0;
    if (name == 'Food') listIndex.value = 1;
    if (name == 'Painting') listIndex.value = 2;
    if (name == 'Drinks') listIndex.value = 3;
    if (name == 'Hygiene') listIndex.value = 4;
    if (name == 'MakeUps') listIndex.value = 5;
    if (name == 'Medicines') listIndex.value = 6;
  }

  getProduct() {}
}
