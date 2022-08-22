import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mytestapp2/modules/login/loginPage.dart';
import 'package:mytestapp2/modules/signup/signupControler.dart';
import '../../main.dart';
import '../../MyColor.dart';
import '../Home/Home.dart';
import '../../compo.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

//import 'package:myapptest2/ttt.dart';

SignupControler controler = Get.put(SignupControler());

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final signupkey = GlobalKey<FormState>();
  TextEditingController? passcon;
  String? pass;

  @override
  Widget build(BuildContext context) {
    // Get.testMode = true;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150,
              color: maincolor,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(left: 5, top: 100),
                child: Text(
                  'Create a new account',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Form(
              key: signupkey,
              child: Column(
                children: [
                  InputSquare(
                    hintext: 'Enter your name',
                    maintext: 'Name',
                    fieldicon: Icon(Icons.person),
                    regexp: new RegExp(r'^[a-z A-Z]+$'),
                    onChanged: (value) {
                      controler.user.value.name = value;
                    },
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  /* InputSquare(
                    hintext: 'Enter your phone number',
                    maintext: 'Phone number',
                    keystype: TextInputType.phone,
                    fieldicon: Icon(Icons.phone),
                    regexp: new RegExp(r'^[0-9]+$'),
                  ),
                  SizedBox(
                    height: 10,
                  ), */
                  InputSquare(
                    hintext: 'Enter your email',
                    maintext: 'Email',
                    fieldicon: Icon(Icons.email),
                    regexp: new RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}'),
                    onChanged: (value) {
                      controler.user.value.email = value;
                    },
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  PasswordInputSquare(
                    maintext: 'Password',
                    hintext: 'Enter your password',
                    control: passcon,
                    onChanged: (value) {
                      controler.user.value.password = value;
                    },
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  PasswordInputSquare(
                    maintext: 'Confirm Password',
                    hintext: 'Confirm your password',
                    confirmpas: pass,
                    onChanged: (value) {
                      controler.user.value.confiPassword = value;
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    child: Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                        color: maincolor,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Center(
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      if (signupkey.currentState!.validate()) {
                        signUpclick();
                      }
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'You have an account?',
                        style:
                            TextStyle(color: Color(0xFF7D8085), wordSpacing: 3),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            Get.to(LoginPage());
                          });
                        },
                        child: Text(
                          'Log in',
                          style: TextStyle(
                            color: maincolor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> signUpclick() async {
    EasyLoading.show(status: 'please wait...');
    await controler.regester();
    if (controler.singUpCheck) {
      EasyLoading.showSuccess('Wellcome!', duration: Duration(seconds: 2));
      Get.to(Home());
    } else {
      EasyLoading.showError(controler.message);
    }
  }
}
