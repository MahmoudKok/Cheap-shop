import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mytestapp2/modules/Detailes/commentPage.dart';
import 'package:mytestapp2/modules/Detailes/detailesControler.dart';
import 'package:get/get.dart';
import 'package:mytestapp2/modules/EditProduct/editpage.dart';
import 'package:mytestapp2/modules/Home/Home.dart';

class Detailespage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    print(MediaQuery.of(context).size.width);

    DetailesControler deco = Get.put<DetailesControler>(DetailesControler());
    deco.checkuser();
    return Scaffold(
      backgroundColor: Colors.redAccent.shade100,
      body: SafeArea(
        child: Container(
          /*  height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width, */
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * .3,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.redAccent.shade100,
                  ),
                  child: Image.asset(
                    'assets/images/2.png',
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 210),
                            child: Visibility(
                              visible: true, //deco.isVisble.value,
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              title: Text(
                                                'Are you sure?',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20),
                                              ),
                                              content: Text(
                                                'The product will delete from your products',
                                                style: TextStyle(
                                                  color: Colors.grey.shade700,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              ),
                                              actions: [
                                                MaterialButton(
                                                  onPressed: () {
                                                    Get.back();
                                                  },
                                                  child: Container(
                                                    height: 40,
                                                    width: 50,
                                                    decoration: BoxDecoration(
                                                        color: Colors.redAccent,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20)),
                                                    child: Center(
                                                      child: Text(
                                                        'No',
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 15,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                MaterialButton(
                                                  onPressed: () {
                                                    deco.deletProduct(1);
                                                  },
                                                  child: Container(
                                                    height: 40,
                                                    width: 50,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            Colors.greenAccent,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20)),
                                                    child: Center(
                                                      child: Text(
                                                        'Yes',
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 15,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                              backgroundColor: Colors.white,
                                            );
                                          });
                                    },
                                    icon: Icon(
                                      Icons.delete,
                                      size: 25,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 0.1,
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      editcont.de();
                                      Get.to(EditPage());
                                    },
                                    icon: Icon(
                                      Icons.edit,
                                      size: 25,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Obx(
                                  () => Text(
                                    (deco.name.value).toString(),
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Inconsolata',
                                      letterSpacing: 2,
                                    ),
                                  ),
                                ),
                              ),
                              Obx(
                                () => IconButton(
                                  onPressed: () {
                                    deco.turnheart();
                                    deco.colo.value = !(deco.colo.value);
                                  },
                                  icon: Icon(
                                    deco.colo.value
                                        ? Icons.favorite
                                        : Icons.favorite_outline_sharp,
                                    color: deco.colo.value
                                        ? Colors.redAccent
                                        : Colors.black,
                                    size: deco.colo.value ? 40 : 35,
                                  ),
                                ),
                              ),
                              IconButton(
                                  onPressed: () {
                                    Get.to(CommentPage());
                                  },
                                  icon: Icon(Icons.comment))
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                Obx(
                                  () => Text(
                                    deco.view.value.toString(),
                                    style: TextStyle(
                                        color: Colors.grey.shade500,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Icon(
                                  Icons.remove_red_eye,
                                  color: Colors.grey.shade500,
                                  size: 15,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Obx(
                                  () => Text(
                                    (deco.likes.value).toString(),
                                    style: TextStyle(
                                        color: Colors.grey.shade500,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Icon(
                                  Icons.thumb_up,
                                  color: Colors.grey.shade500,
                                  size: 15,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Obx(
                                () => UseableColumn(
                                  na: 'Price',
                                  val: deco.price.value,
                                ),
                              ),
                              Obx(
                                () => UseableColumn(
                                  na: 'Off',
                                  val: deco.off.value,
                                ),
                              ),
                              Obx(
                                () => UseableColumn(
                                  na: 'Quanite',
                                  val: deco.quanit.value,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text(
                                'Categories: ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Obx(
                                () => Text(
                                  deco.categiores.value,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Icon(Icons.emoji_food_beverage_outlined),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text(
                                'Expire Date: ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Obx(
                                () => Text(
                                  '${deco.expodate.value.year}/${deco.expodate.value.month}/${deco.expodate.value.day}',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Icon(Icons.history),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 240),
                                child: Text(
                                  'descrbtion',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 5, right: 5),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Obx(
                                      () => Text(
                                        deco.descr.value,
                                        maxLines: 4,
                                        overflow: TextOverflow.clip,
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontFamily: 'Inconsolata',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                    color: Colors.grey.shade400.withAlpha(90),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 150,
                            ),
                            child: PopupMenuButton(
                              child: Row(
                                children: [
                                  Text(
                                    'Contact Informations',
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(Icons.expand_more_outlined)
                                ],
                              ),
                              itemBuilder: (BuildContext) => [
                                PopupMenuItem(
                                  child: Obx(() =>
                                      SelectableText(deco.infFacebook.value)),
                                ),
                                PopupMenuItem(
                                  child: Obx(() =>
                                      SelectableText(deco.infEmail.value)),
                                ),
                                PopupMenuItem(
                                  child: Obx(() =>
                                      SelectableText(deco.infPhone.value)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class UseableColumn extends StatelessWidget {
  String? na;
  double? val;
  String? naW;
  UseableColumn({
    this.na,
    this.val,
  });

  @override
  Widget build(BuildContext context) {
    if (na == 'Price') {
      naW = val!.toString() + '\$';
    } else if (na == 'Off') {
      naW = val!.toString() + '%';
    } else {
      naW = val.toString();
    }
    return Column(
      children: [
        Text(
          na!,
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade500),
        ),
        Text(
          naW!,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
