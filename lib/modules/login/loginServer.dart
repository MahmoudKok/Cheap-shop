import 'dart:collection';
import 'dart:convert';

import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:http/http.dart' as http;
import 'package:mytestapp2/config/server_config.dart';
import 'package:mytestapp2/modules/login/loginControler.dart';

LoginControler controler = Get.put<LoginControler>(LoginControler());

class LoginService {
  var url = Uri.parse(ServerConfig.domainName + ServerConfig.login);
  Future<bool> login(var email, var password) async {
    print(email);
    print(password);
    print(
        ServerConfig.domainName + '/api/login?email=$email&password=$password');
    var response = await http.post(
      Uri.parse(
        ServerConfig.domainName + '/api/login?email=$email&password=$password',
        /*    ServerConfig.login +
            email.toString() +
            password.toString(), */
      ),
    );
    if (response.statusCode == 200) {
      print('hello');
      print(response.statusCode);
      print(response.body);
      var jsonResponse = jsonDecode(response.body);
      if (jsonResponse['message'] != 'Email Or password in not correct') {
        controler.userInfo.value = jsonResponse;
        return true;
      } else
        return false;
    } else
      return false;
  }
}
