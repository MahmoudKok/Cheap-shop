import 'package:get/get.dart';
import 'package:mytestapp2/modules/signup/SignupService.dart';

class UserInfo {
  var name;
  var email;
  var password;
  var confiPassword;
}

class SignupControler extends GetxController {
  RxMap<dynamic, dynamic> userInfo = {}.obs;
  Rx<UserInfo> user = UserInfo().obs;
  bool singUpCheck = false;
  String message = '';
  SignUpService service = SignUpService();
  Future<void> regester() async {
    singUpCheck = await service.regester(user);
  }
}
