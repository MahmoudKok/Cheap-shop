import 'package:flutter/cupertino.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:http/http.dart' as http;
import 'package:http/io_client.dart';
import 'package:mytestapp2/config/server_config.dart';
import 'dart:convert';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:mytestapp2/modules/signup/signupControler.dart';

SignupControler controler = Get.put<SignupControler>(SignupControler());

class SignUpService {
  Future<bool> regester(Rx<UserInfo> user) async {
    print(ServerConfig.domainName +
        '/api/register?name=${user.value.name}&email=${user.value.email}&password=${user.value.password}');
    var response = await http.post(
      Uri.parse(ServerConfig.domainName +
          '/api/register?name=${user.value.name}&email=${user.value.email}&password=${user.value.password}'),
    );
    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      if (jsonResponse['message'] == 'User Created Successfully') {
        controler.userInfo.value = jsonResponse;
        controler.message = 'User Created Successfully';
        return true;
      } else {
        controler.message = 'the name or email is used';
        return false;
      }
    } else {
      controler.message = 'an error';
      return false;
    }
  }
}
