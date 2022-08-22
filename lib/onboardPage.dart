import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:mytestapp2/MyColor.dart';
import 'package:mytestapp2/modules/login/loginPage.dart';

class OnboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            title: 'Easy!',
            body: 'You can use it with ease because it has smooth interfaces',
            image: Image.asset('assets/images/easy.png'),
            decoration: PageDecoration(
              pageColor: Colors.white,
              titleTextStyle: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
              bodyTextStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black38),
              imageFlex: 2,
            ),
          ),
          PageViewModel(
            title: 'Save money',
            body:
                'Save a lot of money by buying products that have a good discount on',
            image: Image.asset(
              'assets/images/saving-money.jpg',
              fit: BoxFit.contain,
            ),
            decoration: PageDecoration(
              pageColor: Colors.white,
              titleTextStyle: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
              bodyTextStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black38),
              imageFlex: 2,
            ),
          ),
          PageViewModel(
            title: 'Shop from your home!',
            body:
                'Browse products at home and communicate with customers to make sells',
            image: Image.asset(
              'assets/images/shopping.png',
            ),
            decoration: PageDecoration(
              pageColor: Colors.white,
              titleTextStyle: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
              bodyTextStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black38),
              imageFlex: 2,
            ),
          ),
        ],
        onDone: () {
          Get.to(LoginPage());
        },
        showSkipButton: true,
        skip: Text('Skip'),
        onSkip: () {
          Get.to(LoginPage());
        },
        next: Icon(
          Icons.arrow_forward_ios,
        ),
        done: Text('Done'),
        dotsDecorator: DotsDecorator(
          color: Colors.grey,
          size: Size(10, 0),
          activeSize: Size(12, 12),
          activeColor: maincolor!,
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        ),
      ),
    );
  }
}
