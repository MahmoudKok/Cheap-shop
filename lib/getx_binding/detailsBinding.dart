import 'package:get/get.dart';
import 'package:mytestapp2/modules/Detailes/detailesControler.dart';

class DetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<DetailesControler>(DetailesControler());
  }
}
