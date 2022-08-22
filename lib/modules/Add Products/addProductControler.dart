import 'package:get/get.dart';
import 'addProduct.dart';

class AddproductControler extends GetxController {
  var name = ''.obs;
  var price = ''.obs;
  var catagiore = 'Catagiore'.obs;
  var numb = 12.obs;
  var desc =
      'lllllllllllllla\nklsdncsdklcnsdklcndk\nsdkcnsdjkcas\nsamkcnmasklcnasjlcnsajkcnsajkcnsajk\ncasnjc'
          .obs;
  var expoDate = DateTime(2022).obs;
  var per1 = '0'.obs;
  var per2 = '0'.obs;
  var per3 = '0'.obs;
  var off1 = '1'.obs;
  var off2 = '2'.obs;
  var off3 = '3'.obs;
  //info
  var phone = ''.obs;
  var email = ''.obs;
  var facebook = ''.obs;
  var image;

  Function? addNum() {
    numb.value++;
  }

  Function? subNum() {
    numb.value--;
  }

  /* String? getPer(int i) {
    if (i == 1)
      return '${controler.per1.value.year}/${controler.per1.value.month}/${controler.per1.value.day}';
    if (i == 2)
      return '${controler.per2.value.year}/${controler.per2.value.month}/${controler.per2.value.day}';
    if (i == 3)
      return '${controler.per3.value.year}/${controler.per3.value.month}/${controler.per3.value.day}';
  } */
}
