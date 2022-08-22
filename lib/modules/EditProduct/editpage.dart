import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytestapp2/modules/Add%20Products/addProductControler.dart';
import 'package:mytestapp2/modules/Detailes/detailesControler.dart';
import 'package:mytestapp2/modules/Detailes/detailspage.dart';
import 'package:mytestapp2/modules/Home/Home.dart';

import '../../MyColor.dart';
import '../../compo.dart';
import 'editControler.dart';

AddproductControler controler =
    Get.put<AddproductControler>(AddproductControler());
EditControler editcont = Get.put<EditControler>(EditControler());
final edproductKey = GlobalKey<FormState>();

class EditPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: edproductKey,
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.only(left: 10, top: 170),
                  child: Text('Edit Product',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                      )),
                ),
                height: 220,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.orange,
                      Colors.amber,
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                width: double.infinity,
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  Obx(
                    () => InputSquare(
                      hintext: 'Enter product name',
                      maintext: 'Product name',
                      regexp: new RegExp(r'^[a-z A-Z]+$'),
                      onChange: 'name',
                      mycontrol: editcont.namePro.value,
                      keystype: TextInputType.text,
                      lines: 1,
                    ),
                  ),
                  SizedBox(height: 15),
                  InputSquare(
                    hintext: 'Enter price',
                    maintext: 'Price',
                    regexp: new RegExp(r'^[0-9]+$'),
                    keystype: TextInputType.number,
                    onChange: 'price',
                    mycontrol: editcont.pricePro.value,
                  ),
                  SizedBox(height: 15),
                  InputSquare(
                    hintext: 'Describe your product...',
                    maintext: 'Descrption',
                    regexp: new RegExp(r'^[a-z A-Z]+$'),
                    keystype: TextInputType.multiline,
                    onChange: 'desc',
                    lines: 5,
                    mycontrol: editcont.descPro.value,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 18,
                        right: MediaQuery.of(context).size.width * .522),
                    child: Container(
                      width: 360,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.orangeAccent.withAlpha(50),
                      ),
                      child: PopupMenuButton(
                        iconSize: 0,
                        color: Colors.orangeAccent.shade100,
                        itemBuilder: (BuildContext context) => [
                          PopupMenuItem(
                            child: Text('Food'),
                            value: 'Food',
                          ),
                          PopupMenuItem(
                            child: Text('Drinks'),
                            value: 'Drinks',
                          ),
                          PopupMenuItem(
                            child: Text(
                              'Makeup',
                            ),
                            value: 'Makeup',
                          ),
                          PopupMenuItem(
                            child: Text(
                              'Painting',
                            ),
                            value: 'Painting',
                          ),
                          PopupMenuItem(
                            child: Text(
                              'Medcine',
                            ),
                            value: 'Medcine',
                          ),
                          PopupMenuItem(
                            child: Text(
                              'Hygene',
                            ),
                            value: 'Hygene',
                          ),
                        ],
                        onSelected: (String value) {
                          editcont.cata.value = value.toString();
                          print(controler.catagiore.value);
                        },
                      ),
                    ),
                  ),
                  Positioned(
                    left: 25,
                    top: 15,
                    child: Obx(
                      () => Text(
                        editcont.cata.value.toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: maincolor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Quanite of product',
                style: TextStyle(
                  color: Colors.grey.shade400,
                  fontSize: 15,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      editcont.subNum();
                    },
                    icon: Icon(
                      Icons.remove,
                    ),
                  ),
                  Obx(
                    () => Text(
                      editcont.numb.value.toString(),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      editcont.addNum();
                    },
                    icon: Icon(
                      Icons.add,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              GestureDetector(
                child: Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.orangeAccent.withAlpha(90),
                        Colors.amberAccent.withAlpha(90),
                      ],
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Center(
                    child: Obx(
                      () => Text(
                          '${editcont.expodate.value.year}/${editcont.expodate.value.month}/${editcont.expodate.value.day}',
                          style: TextStyle(
                            color: maincolor,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ),
                ),
                onTap: () async {
                  DateTime? newtime = await showDatePicker(
                    context: context,
                    initialDate: controler.expoDate.value,
                    firstDate: DateTime(2021),
                    lastDate: DateTime(2030),
                  );
                  print(controler.expoDate.value);

                  if (newtime != null) {
                    editcont.expodate.value = newtime;
                    print(editcont.expodate.value);
                  }
                },
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Enter three periodes with the off percent',
                style: TextStyle(color: Colors.grey.shade400, fontSize: 15),
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Periode 1',
                        style: TextStyle(
                          color: Colors.blueGrey.shade200,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SmallInputSquare(
                        index: 1,
                        ke: 'p',
                        name: 'periode',
                        regexp: new RegExp(r'^[0-9]+$'),
                      ),
                      SmallInputSquare(
                        index: 1,
                        ke: 'o',
                        name: 'Number',
                        regexp: new RegExp(r'^[0-9]+$'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Periode 2',
                        style: TextStyle(
                          color: Colors.blueGrey.shade200,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SmallInputSquare(
                          index: 2,
                          ke: 'p',
                          name: 'periode',
                          regexp: new RegExp(r'^[0-9]+$')),
                      SmallInputSquare(
                        index: 2,
                        ke: 'o',
                        name: 'Number',
                        regexp: new RegExp(r'^[0-9]+$'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Periode 3',
                        style: TextStyle(
                          color: Colors.blueGrey.shade200,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SmallInputSquare(
                          index: 3,
                          ke: 'p',
                          name: 'periode',
                          regexp: new RegExp(r'^[0-9]+$')),
                      SmallInputSquare(
                        index: 3,
                        ke: 'o',
                        name: 'Number',
                        regexp: new RegExp(r'^[0-9]+$'),
                      ),
                    ],
                  ),
/*               PeriodesOfProduct(expoDate: controler.per1.value, index: 1),
                  SizedBox(
                    height: 20,
                  ),
                  PeriodesOfProduct(expoDate: controler.per2.value, index: 2),
                  SizedBox(
                    height: 20,
                  ),
                  PeriodesOfProduct(expoDate: controler.per3.value, index: 3), */
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text('Add yout contact information',
                  style: TextStyle(color: Colors.grey.shade400, fontSize: 15)),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  InputSquare(
                    hintext: 'Entet your phone number',
                    maintext: 'Phone',
                    keystype: TextInputType.phone,
                    onChange: 'phone',
                    mycontrol: editcont.phone.value,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InputSquare(
                    hintext: 'Enter your eamil',
                    maintext: 'Email',
                    keystype: TextInputType.emailAddress,
                    onChange: 'email',
                    mycontrol: editcont.email.value,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InputSquare(
                    hintext: 'Enter your Facebook name',
                    maintext: 'Facebook',
                    onChange: 'facebook',
                    mycontrol: editcont.facebook.value,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width * .5,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add_a_photo,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Add image to your Product',
                          style: TextStyle(
                            color: Colors.grey.shade600,
                          ),
                        )
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.orangeAccent.shade100.withAlpha(90),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
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
                      'Save',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  if (edproductKey.currentState!.validate())
                    ; /*  Get.back(); */
                },
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/* class InfoBox extends StatelessWidget {
  const InfoBox({
    Key? key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        cursorColor: maincolor,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          filled: true,
          fillColor: Colors.orange.withAlpha(10),
        ),
      ),
    );
  }
} */

/* class PeriodesOfProduct extends StatelessWidget {
  final DateTime expoDate;
  final int index;

  const PeriodesOfProduct({
    required this.expoDate,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SmallDatePicker(expoDate: expoDate, index: index),
        SizedBox(
          width: 20,
        ),
        SmallInputSquare(
          index: index,
        ),
      ],
    );
  }
} */

/* class SmallDatePicker extends StatelessWidget {
  SmallDatePicker({
    required this.expoDate,
    required this.index,
  });

  DateTime expoDate;
  int index;

  @override
  Widget build(BuildContext context) {
    if (index == 1) expoDate = controler.per1.value;
    if (index == 2) expoDate = controler.per2.value;
    if (index == 3) expoDate = controler.per3.value;
    print(expoDate);
    return GestureDetector(
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width * .54,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.orange,
              Colors.amberAccent,
            ],
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: Center(
          child: Obx(
            () => Text(
              controler.getPer(index).toString(),
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      onTap: () async {
        DateTime? newtime = await showDatePicker(
          context: context,
          initialDate: controler.expoDate.value,
          firstDate: DateTime(2021),
          lastDate: DateTime(2030),
        );
        print(controler.expoDate.value);

        if (newtime != null) {
          if (index == 1) controler.per1.value = newtime;
          if (index == 2) controler.per2.value = newtime;
          if (index == 3) controler.per3.value = newtime;
          print(expoDate);
        }
      },
    );
  }
} */

class SmallInputSquare extends StatelessWidget {
  int? index;
  String? ke;
  var name;
  var regexp;
  SmallInputSquare({
    this.index,
    this.ke,
    this.name,
    this.regexp,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 100,
      child: TextFormField(
        keyboardType: TextInputType.number,
        cursorColor: maincolor,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          filled: true,
          fillColor: Colors.orange.withAlpha(10),
        ),
        validator: (value) {
          if (value!.isEmpty || !(regexp)!.hasMatch(value)) {
            return 'enter corect ${(name)}';
          } else
            return null;
        },
        onChanged: (value) {
          if (index == 1) {
            if (ke == 'o')
              controler.off1.value = value;
            else
              controler.per1.value = value;
          }

          if (index == 2) {
            if (ke == 'o')
              controler.off2.value = value;
            else
              controler.per2.value = value;
          }

          if (index == 3) {
            if (ke == 'o')
              controler.off3.value = value;
            else
              controler.per3.value = value;
          }
          print(controler.per1.value);
          print(controler.per2.value);
          print(controler.per3.value);
          print(controler.off1.value);
          print(controler.off2.value);
          print(controler.off3.value);
        },
      ),
    );
  }
}
