import 'package:get/get.dart';
import 'package:mytestapp2/modules/signup/signupControler.dart';

class SignupBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<SignupControler>(SignupControler());
  }
}
