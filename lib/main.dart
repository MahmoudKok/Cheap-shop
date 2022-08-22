import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:mytestapp2/HomeBotom.dart';
/* import 'package:mytestapp2/HomeBotom.dart'; */
import 'package:mytestapp2/MyColor.dart';
import 'package:mytestapp2/getx_binding/HomeBinding.dart';
import 'package:mytestapp2/getx_binding/loginBinding.dart';
import 'package:mytestapp2/getx_binding/signupBinding.dart';
import 'package:mytestapp2/modules/Add%20Products/addProduct.dart';
import 'package:mytestapp2/modules/Detailes/commentPage.dart';
import 'package:mytestapp2/modules/Detailes/detailspage.dart';
//import 'package:mytestapp2/modules/EditProduct/editControler.dart';
import 'package:mytestapp2/modules/EditProduct/editpage.dart';
import 'package:mytestapp2/modules/Home/searchResult.dart';
import 'package:mytestapp2/modules/Profile/editProfile.dart';
import 'package:mytestapp2/modules/Profile/profile.dart';
/* import 'package:mytestapp2/modules/Add%20Products/addProduct.dart';
import 'package:mytestapp2/modules/Detailes/detailspage.dart';
import 'package:mytestapp2/modules/Home/testhome.dart';
import 'package:mytestapp2/modules/Profile/profile.dart'; */
import 'package:mytestapp2/modules/login/loginPage.dart';
import 'package:mytestapp2/onboardPage.dart';
//import 'package:flutter/services.dart';
import 'modules/signup/SignUp.dart';
import 'modules/Home/Home.dart';
//import 'MyColor.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:mytestapp2/modules/Home/Home.dart';
/* import 'package:curved_navigation_bar/curved_navigation_bar.dart'; */
/* import 'HomeBotom.dart'; */

void main() {
  Get.testMode = true;
  runApp(
    GetMaterialApp(
      theme: ThemeData(primaryColor: maincolor),
      //initialRoute: '/Home',
      getPages: [
        //login
        GetPage(
          name: '/login',
          page: () => LoginPage(),
          binding: LoginBinding(),
        ),
        //signup
        GetPage(
          name: '/signup',
          page: () => Signup(),
          binding: SignupBinding(),
        ),
        GetPage(
          name: '/Home',
          page: () => Home(),
          binding: HomeBinding(),
        ),
      ],
      home: Kok(),
      debugShowCheckedModeBanner: false,

      builder: EasyLoading.init(),
    ),
  );
}

class Kok extends StatefulWidget {
  @override
  _KokState createState() => _KokState();
}

class _KokState extends State<Kok> {
  @override
  Widget build(BuildContext context) {
    Get.testMode = true;
    return Scaffold(
      body: Signup(), // screen[id],
    );
  }
}
