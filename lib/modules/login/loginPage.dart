import 'package:flutter/material.dart';
import 'package:mytestapp2/modules/Detailes/commentPage.dart';
import 'package:mytestapp2/modules/Home/Home.dart';
import 'package:mytestapp2/modules/login/loginControler.dart';
import '../../main.dart';
import '../../MyColor.dart';
import '../signup/SignUp.dart';
import '../../compo.dart';
import 'package:get/get.dart';

LoginControler controler = Get.put<LoginControler>(LoginControler());

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //LoginControler controler = Get.find();
  final loginkey = GlobalKey<FormState>();
  TextEditingController? emailcontrol;
  TextEditingController? passwordcontrol;
  @override
  Widget build(BuildContext context) {
    //Get.testMode = true;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Upbarshape(),
                    Upbarshape(),
                    Upbarshape(),
                  ],
                ),
                SizedBox(
                  height: 40,
                  width: double.infinity,
                ),
                Text(
                  'Welcome Back!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 35,
                    color: Color(0xFF232931),
                  ),
                ),
                SizedBox(
                  height: 30,
                  width: double.infinity,
                ),
                Form(
                  key: loginkey,
                  child: Column(
                    children: [
                      InputSquare(
                        hintext: 'Enter your email',
                        maintext: 'Email',
                        fieldicon: Icon(Icons.email),
                        mycontrol: emailcontrol,
                        regexp: new RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}'),
                        lines: 1,
                        keystype: TextInputType.emailAddress,
                        onChanged: (value) {
                          controler.login.value.email = value;
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      PasswordInputSquare(
                        maintext: 'Password',
                        hintext: 'Enter your password',
                        onChanged: (value) {
                          controler.login.value.password = value;
                        },
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      GestureDetector(
                        onTap: () {
                          print('ok');
                          if (loginkey.currentState!.validate()) {
                            loginn();
                          }
                        },
                        child: Container(
                          height: 50,
                          width: 200,
                          decoration: BoxDecoration(
                            color: maincolor,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Center(
                            child: Text(
                              'log in',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'You don\'t have a account?',
                            style: TextStyle(color: ltextcolor, wordSpacing: 3),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                Get.to(Signup());
                              });
                            },
                            child: Text(
                              'Registr',
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
                  height: 15,
                  width: double.infinity,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> loginn() async {
    if (controler.loginCheck)
      print('Done');
    else
      print('Not Done');
    await controler.loginControl();
    if (controler.loginCheck)
      Get.to(Home());
    else
      print('Not Done');
  }
}
