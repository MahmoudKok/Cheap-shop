import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get.dart';

import 'package:mytestapp2/modules/Profile/profileControler.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ProfileControler>(ProfileControler());
  }
}
