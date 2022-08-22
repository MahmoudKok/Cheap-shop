import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytestapp2/compo.dart';
import 'package:mytestapp2/modules/Home/Home.dart';
import 'package:mytestapp2/modules/Home/HomeControler.dart';

class SearchResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Search Result',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w300,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Get.off(Home());
          },
        ),
      ),
      body: Container(
        height: Get.size.height,
        width: Get.size.width,
        child: SingleChildScrollView(
          child: Wrap(
            children: search!['Hello']!,
          ),
        ),
      ),
    );
  }
}
