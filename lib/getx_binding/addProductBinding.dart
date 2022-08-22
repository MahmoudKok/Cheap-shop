import 'package:get/get.dart';
import 'package:mytestapp2/modules/Add%20Products/addProductControler.dart';

class AddProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<AddproductControler>(AddproductControler());
  }
}
