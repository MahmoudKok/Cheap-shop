import 'package:get/get.dart';
import 'package:mytestapp2/modules/login/loginControler.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<LoginControler>(LoginControler());
  }
}
