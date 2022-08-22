import 'package:flutter/material.dart';
import 'package:mytestapp2/compo.dart';
import 'package:get/get.dart';
import 'package:mytestapp2/modules/Add%20Products/addProductControler.dart';
import 'package:mytestapp2/modules/Detailes/detailspage.dart';
import 'package:mytestapp2/modules/Home/Home.dart';
import 'package:mytestapp2/MyColor.dart';
import 'package:mytestapp2/modules/signup/SignUp.dart';

AddproductControler controler =
    Get.put<AddproductControler>(AddproductControler());

class Addproduct extends StatelessWidget {
  final productKey = GlobalKey<FormState>();
  final productKey2 = GlobalKey<FormState>();
  int numOfProdutcs = 0;
  DateTime expoDate = DateTime(2021);
  @override
  Widget build(BuildContext context) {
    //print(MediaQuery.of(context).size.width * .522);
    print(controler.name);
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
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
                )),
            width: double.infinity,
            child:
                Image.asset('assets/images/addproduct.png', fit: BoxFit.cover),
          ),
          SizedBox(height: 20),
          Form(
            key: productKey,
            child: Column(
              children: [
                InputSquare(
                  hintext: 'Enter product name',
                  maintext: 'Product name',
                  regexp: new RegExp(r'^[a-z A-Z]+$'),
                  onChange: 'name',
                ),
                SizedBox(height: 15),
                InputSquare(
                  hintext: 'Enter price',
                  maintext: 'Price',
                  regexp: new RegExp(r'^[0-9]+$'),
                  keystype: TextInputType.number,
                  onChange: 'price',
                ),
                SizedBox(height: 15),
                InputSquare(
                  hintext: 'Describe your product...',
                  maintext: 'Descrption',
                  regexp: new RegExp(r'^[a-z A-Z]+$'),
                  keystype: TextInputType.multiline,
                  onChange: 'desc',
                  lines: 5,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: 18, right: MediaQuery.of(context).size.width * .522),
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
                        value: 'Make-up',
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
                        value: 'Medcines',
                      ),
                      PopupMenuItem(
                        child: Text(
                          'Hygene',
                        ),
                        value: 'Hygene',
                      ),
                    ],
                    onSelected: (String value) {
                      controler.catagiore.value = value.toString();
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
                    controler.catagiore.value.toString(),
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
              fontSize: 18,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  controler.subNum();
                },
                icon: Icon(
                  Icons.remove,
                ),
              ),
              Obx(
                () => Text(
                  controler.numb.value.toString(),
                ),
              ),
              IconButton(
                onPressed: () {
                  controler.addNum();
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
                      '${controler.expoDate.value.year}/${controler.expoDate.value.month}/${controler.expoDate.value.day}',
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
                builder: (context, child) {
                  return Theme(
                      data: ThemeData.light().copyWith(
                        colorScheme: ColorScheme.light(primary: maincolor!),
                      ),
                      child: child!);
                },
                context: context,
                initialDate: controler.expoDate.value,
                firstDate: DateTime(2021),
                lastDate: DateTime(2030),
              );
              print(controler.expoDate.value);

              if (newtime != null) {
                controler.expoDate.value = newtime;
                print(controler.expoDate.value);
              }
            },
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Enter three perodes with the off percent',
            style: TextStyle(color: Colors.grey.shade400, fontSize: 15),
          ),
          SizedBox(height: 20),
          Form(
            key: productKey2,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Periode 1',
                      style: TextStyle(
                        color: Colors.blueGrey.shade200,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SmallInputSquare(
                      index: 1,
                      ke: 'p',
                    ),
                    SmallInputSquare(
                      index: 1,
                      ke: 'o',
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
                        fontSize: 20,
                      ),
                    ),
                    SmallInputSquare(
                      index: 2,
                      ke: 'p',
                    ),
                    SmallInputSquare(
                      index: 2,
                      ke: 'o',
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
                        fontSize: 20,
                      ),
                    ),
                    SmallInputSquare(
                      index: 3,
                      ke: 'p',
                    ),
                    SmallInputSquare(
                      index: 3,
                      ke: 'o',
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
          ),
          SizedBox(
            height: 20,
          ),
          Text('Add your contact informations',
              style: TextStyle(color: Colors.grey.shade400, fontSize: 15)),
          SizedBox(
            height: 20,
          ),
          Form(
            //key: productKey,
            child: Column(
              children: [
                InputSquare(
                  hintext: 'Entet your phone number',
                  maintext: 'Phone',
                  keystype: TextInputType.phone,
                  onChange: 'phone',
                ),
                SizedBox(
                  height: 10,
                ),
                InputSquare(
                  hintext: 'Enter your eamil',
                  maintext: 'Email',
                  keystype: TextInputType.emailAddress,
                  onChange: 'email',
                ),
                SizedBox(
                  height: 10,
                ),
                InputSquare(
                  hintext: 'Enter your Facebook name',
                  maintext: 'Facebook',
                  onChange: 'facebook',
                ),
              ],
            ),
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
                  'Create',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            onTap: () {
              if (productKey.currentState!.validate()) Get.to(Detailespage());
            },
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}

class InfoBox extends StatelessWidget {
  const InfoBox({
    Key? key,
  }) : super(key: key);

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
}

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
  SmallInputSquare({
    this.index,
    this.ke,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 100,
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty || !(RegExp(r'^[0-9]+$')).hasMatch(value)) {
            return 'enter corect number';
          } else
            return null;
        },
        keyboardType: TextInputType.number,
        cursorColor: maincolor,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          filled: true,
          fillColor: Colors.orange.withAlpha(10),
        ),
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
