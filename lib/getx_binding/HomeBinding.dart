import 'package:get/get.dart';
import 'package:mytestapp2/modules/Home/HomeControler.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<HomeControler>(HomeControler());
  }
}
