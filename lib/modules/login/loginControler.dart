import 'package:get/get.dart';
import 'package:mytestapp2/modules/login/loginServer.dart';
import 'loginServer.dart';

class LoginModel {
  var email;
  var password;
}

class LoginControler extends GetxController {
  Rx<LoginModel> login = new LoginModel().obs;
  late RxMap<dynamic, dynamic> userInfo = {}.obs;
  bool loginCheck = false;
  Future<void> loginControl() async {
    LoginService service = LoginService();
    print('control');
    loginCheck = await service.login(login.value.email, login.value.password);
  }
}
