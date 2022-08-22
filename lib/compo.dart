import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytestapp2/MyColor.dart';
import 'package:mytestapp2/MyColor.dart';
import 'package:mytestapp2/main.dart';
import 'package:mytestapp2/modules/Add%20Products/addProductControler.dart';
import 'package:mytestapp2/modules/Home/Home.dart';
import 'package:mytestapp2/modules/Home/HomeControler.dart';
import 'package:mytestapp2/modules/Home/searchResult.dart';
import 'package:mytestapp2/modules/Profile/profile.dart';
import 'package:mytestapp2/modules/login/loginPage.dart';
import 'package:mytestapp2/modules/signup/signupControler.dart';
import 'package:mytestapp2/productsModel.dart';
import 'MyColor.dart';
import 'modules/Detailes/detailspage.dart';
import 'package:mytestapp2/modules/Detailes/detailesControler.dart';

final forkey = GlobalKey<FormState>();

AddproductControler addcontrol =Get.put<AddproductControler>(AddproductControler());
DetailesControler decontroler = Get.put<DetailesControler>(DetailesControler());
HomeControler hocontroler = Get.put<HomeControler>(HomeControler());
SignupControler signupControler = Get.put<SignupControler>(SignupControler());

class Products{
  var id;
  var name;
  var likes;
  var view;
  final price;
  final off;
  final numb;
  var expodate;
  var cata;
  var desc;
  var phone;
  var email;
  var facebook;
  var photo;
  var backColor;
  Products({
    this.name,
    this.cata,
    this.desc,
    this.email,
    this.expodate,
    this.facebook,
    this.likes,
    this.numb,
    this.off,
    this.phone,
    this.price,
    this.view,
    this.photo,
    this.backColor,
    this.id,
  });
}

/* class ChipsData {
  final color;
  final label;
  final labelColor;
  final isSelected;
  ChipsData({
    this.color,
    this.label,
    this.isSelected,
    this.labelColor,
  });

  ChipsData copy({
    final color,
    String? label,
    Color? labelColor,
    bool? isSelected,
  }) {
    return ChipsData(
      label: label ?? this.label,
      labelColor: labelColor ?? this.labelColor,
      isSelected: isSelected ?? this.isSelected,
    );
  }
}

class ChoisChips {
  static final all = [
    ChipsData(
      label: 'Food',
      color: maincolor,
      labelColor: Colors.white,
      isSelected: false,
    ),
    ChipsData(
      label: 'Dhan',
      color: maincolor,
      labelColor: Colors.white,
      isSelected: false,
    ),
    ChipsData(
      label: 'Drinks',
      color: maincolor,
      labelColor: Colors.white,
      isSelected: false,
    ),
    ChipsData(
      label: 'Makeup',
      color: maincolor,
      labelColor: Colors.white,
      isSelected: false,
    ),
    ChipsData(
      label: 'Hugren',
      color: maincolor,
      labelColor: Colors.white,
      isSelected: false,
    ),
  ];
} */
List<Products> product = [
  Products(
    id: 1,
    name: 'Ayam brand',
    off: 30,
    price: 12,
    photo: 'assets/images/1.png',
    view: 63,
    likes: 151,
    backColor: Colors.amber.shade100,
    phone: '0954850462',
    facebook: 'sdcvsdhcg',
    email: 'hsdbcisc',
    cata: 'Food',
    desc: 'jdkscndjscsjcjsdc',
    expodate: DateTime(2001 - 5 - 5),
    numb: 14,
  ),
  Products(
    id: 2,
    name: 'Ayam brand',
    off: 30,
    price: 12,
    photo: 'assets/images/1.png',
    view: 63,
    likes: 151,
    backColor: Colors.amber.shade100,
    phone: '0954850462',
    facebook: 'sdcvsdhcg',
    email: 'hsdbcisc',
    cata: 'Food',
    desc: 'jdkscndjscsjcjsdc',
    expodate: DateTime(2001 - 5 - 5),
    numb: 14,
  ),
  Products(
    id: 3,
    name: 'sj brand',
    off: 77,
    price: 44,
    photo: 'assets/images/2.png',
    view: 55,
    likes: 77,
    backColor: Colors.amber.shade100,
    phone: '516565151631',
    facebook: '51zjhb',
    email: 'jk zkx ',
    cata: 'Drinks',
    desc: 'dcksdjcbsdkcbsdb',
    expodate: DateTime(2001 - 5 - 5),
    numb: 36,
  ),
  Products(
    id: 4,
    name: 'sj dkcdk',
    off: 88,
    price: 305,
    photo: 'assets/images/2.png',
    view: 55,
    likes: 78,
    backColor: Colors.amber.shade100,
    phone: '5666526',
    facebook: '51zjhb',
    email: 'jk scascas ',
    cata: 'Drinks',
    desc: 'csdcscsdcsdcsdcsdcsd',
    expodate: DateTime(2001 - 5 - 5),
    numb: 55,
  ),
];

class ProductsLists {
  static List<Widget> m = [
    ProductMainCard(
      name: 'Ayam brand',
      off: 30,
      price: 12,
      photo: 'assets/images/1.png',
      view: 63,
      backColor: Colors.amber.shade100,
    ),
  ];
  static List<Widget> mp = [
    ProductMainCard(
      name: 'Heniz-Tomato ketchub',
      off: 50,
      price: 19,
      photo: 'assets/images/6.png',
      view: 55,
      likes: 30,
      backColor: Colors.redAccent.shade100,
    ),
    ProductMainCard(
      name: 'Rio mare',
      off: 70,
      price: 5,
      photo: 'assets/images/8.png',
      view: 123,
      backColor: Color(0xFFF3BFC1),
      likes: 66,
    ),
    ProductMainCard(
        name: 'SHALIMAR',
        off: 30,
        price: 30,
        photo: 'assets/images/11.jpg',
        view: 70,
        backColor: Colors.white,
        likes: 50,
      ),
      ProductMainCard(
      name: 'Tone',
      off: 70,
      price: 10,
      photo: 'assets/images/3.png',
      view: 88,
      backColor: Colors.blueAccent.shade100,
    ),
    ProductMainCard(
        name: 'MIGHTYGROW',
        off: 50,
        price: 150,
        photo: 'assets/images/12.png',
        view: 120,
        backColor: Colors.amber.shade100,
        likes: 88,
      ),
       ProductMainCard(
        name: 'SYNSODYNE',
        off: 15,
        price: 19.5,
        photo: 'assets/images/13.png',
        view: 40,
        backColor: Color(0xFFF5FAB1),
        likes: 15,
      ),
    ProductMainCard(
      name: 'Tapasco',
      off: 70,
      price: 20.7,
      photo: 'assets/images/2.png',
      view: 145,
      backColor: Colors.redAccent.shade100,
      id: 1,
      likes: 90,
    ),
    
    ProductMainCard(
      name: 'Deli Style',
      off: 30,
      price: 30,
      photo: 'assets/images/4.png',
      view: 100,
      backColor: Color(0xFFFFFEEF),
    ),
    ProductMainCard(
      name: 'Heinz beanz',
      off: 50,
      price: 20.1,
      photo: 'assets/images/5.png',
      view: 78,
      backColor: Color(0xFFAAFFFE),
    ),
    ProductMainCard(
      name: 'Ayam brand',
      off: 30,
      price: 12,
      photo: 'assets/images/1.png',
      view: 63,
      backColor: Colors.amber.shade100,
    ),
    
    
  ];
}

class PasswordInputSquare extends StatefulWidget {
  String? maintext;
  String? hintext;
  TextEditingController? control;
  String? confirmpas;
final ValueChanged<String>? onChanged;
  PasswordInputSquare({
    this.maintext,
    this.hintext,
    this.control,
    this.confirmpas,
    this.onChanged,
  });

  @override
  _PasswordInputSquareState createState() => _PasswordInputSquareState();
}

class _PasswordInputSquareState extends State<PasswordInputSquare> {
  IconData eye = Icons.remove_red_eye;
  bool obsc = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 18, right: 18),
      child:
         TextFormField(
          validator: (value) {
            if (((value)!.toString()).length < 8) {
              return 'enter at least 8 charcter.';
            }
            if(signupControler.user.value.password!=signupControler.user.value.confiPassword)
            return 'password not match';
            return null;
          },
          controller: widget.control,
          keyboardType: TextInputType.visiblePassword,
          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.auto,
            prefixIcon: Icon(Icons.lock),
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  obsc = !obsc;
                  if (eye == Icons.remove_red_eye_outlined)
                    eye = Icons.remove_red_eye;
                  else
                    eye = Icons.remove_red_eye_outlined;
                });
              },
              icon: Icon(eye),
            ),
            filled: true,
            fillColor: Colors.orange.withAlpha(10),
            border: OutlineInputBorder(),
            labelText: widget.maintext,
            hintText: widget.hintext,
            labelStyle: TextStyle(),
            hintStyle: TextStyle(color: Colors.grey),
          ),
          obscureText: obsc,
          onChanged: widget.onChanged,
        ),
     
    );
  }
}

class InputSquare extends StatelessWidget {
  String? hintext;
  String? maintext;
  TextInputType? keystype = TextInputType.emailAddress;
  Icon? fieldicon;
  static String? fieldvalue;
  TextEditingController? mycontrol;
  String ?fill;
  RegExp? regexp;
  String? onChange;
  int? lines;
final ValueChanged<String>? onChanged;
  InputSquare({
    this.hintext,
    this.maintext,
    this.keystype,
    this.fieldicon,
    this.mycontrol,
    this.regexp,
    this.onChange,
    this.lines,
    this.fill,
    this.onChanged,
  });
 /*  @override
  _InputSquareState createState() => _InputSquareState();
}

class _InputSquareState extends State<InputSquare> { */
  @override
  Widget build(BuildContext context) {
    
    return  Padding(
        padding: EdgeInsets.only(left: 18, right: 18),
        child:  TextFormField(
            
            maxLines: lines,
            cursorColor: maincolor,
            validator: (value) {
              if (value!.isEmpty || !(regexp)!.hasMatch(value)) {
                return 'enter corect ${(maintext)}';
              } else
                return null;
            },
            textDirection: TextDirection.ltr,
            controller: mycontrol,
            keyboardType: keystype,
            decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              prefixIcon: fieldicon,
              filled: true,
              fillColor: Colors.orange.withAlpha(10),
              border: OutlineInputBorder(),
              labelText: maintext,
              hintText: hintext,
              labelStyle: TextStyle(),
              hintStyle: TextStyle(color: Colors.grey),
            ),
            onChanged: onChanged/* (value) {
              if (onChange == 'name') {
                addcontrol.name.value = value;
                decontroler.name.value=value;
              }
              if (onChange == 'price') {
                addcontrol.price.value = value;
              }
              if (onChange == 'phone') {
                addcontrol.phone.value = value;
              }
              if (onChange == 'email') {
                addcontrol.email.value = value;
              }
              if (onChange == 'facebook') {
                addcontrol.facebook.value = value;
              }
              if (onChange == 'desc') {
                addcontrol.desc.value = value;
              }
              print(addcontrol.price.value);
              print(addcontrol.name.value);
              print(addcontrol.phone.value);
              print(addcontrol.email.value);
              print(addcontrol.facebook.value);
              print(addcontrol.desc.value);
            },*/
          ),
 
    );
    
  }
  
}


class Upbarshape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 170,
        width: 100,
        decoration: BoxDecoration(
            color: maincolor,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40))),
      ),
    );
  }
}

Map<String, List<Widget>>? search = {
  'Rio': [
    ProductMainCard(
      name: 'Rio mare',
      off: 70,
      price: 5,
      photo: 'assets/images/8.png',
      view: 123,
      backColor: Color(0xFFF3BFC1),
      likes: 66,
    ),

    /* ProductMainCard(
      name: 'Ayam brand',
      off: 30,
      price: 12,
      photo: 'assets/images/1.png',
      view: 63,
      backColor: Colors.amber.shade100,
      likes: 50,
    ),
    ProductMainCard(
      name: 'Tapasco',
      off: 70,
      price: 20.7,
      photo: 'assets/images/2.png',
      view: 145,
      backColor: Colors.redAccent.shade100,
      likes: 76,
    ),
    ProductMainCard(
      name: 'Tone',
      off: 70,
      price: 10,
      photo: 'assets/images/3.png',
      view: 88,
      backColor: Colors.blueAccent.shade100,
      likes: 100,
    ),
    ProductMainCard(
      name: 'Deli Style',
      off: 30,
      price: 30,
      photo: 'assets/images/4.png',
      view: 100,
      backColor: Color(0xFFFFFEEF),
    ),
    ProductMainCard(
      name: 'Heinz beanz',
      off: 50,
      price: 20.1,
      photo: 'assets/images/5.png',
      view: 78,
      backColor: Color(0xFFAAFFFE),
    ),
    ProductMainCard(
      name: 'Heniz-Tomato ketchub',
      off: 70,
      price: 19,
      photo: 'assets/images/6.png',
      view: 55,
      backColor: Colors.redAccent.shade100,
    ), */
  ],
  'Ok': [
    ProductMainCard(
      name: 'Deli Style',
      off: 30,
      price: 30,
      photo: 'assets/images/4.png',
      view: 100,
      backColor: Color(0xFFFFFEEF),
    ),
    ProductMainCard(
      name: 'Heinz beanz',
      off: 50,
      price: 20.1,
      photo: 'assets/images/5.png',
      view: 78,
      backColor: Color(0xFFAAFFFE),
    ),
    ProductMainCard(
      name: 'Heniz-Tomato ketchub',
      off: 70,
      price: 19,
      photo: 'assets/images/6.png',
      view: 55,
      backColor: Colors.redAccent.shade100,
    ),
  ],
  'asd': [
    ProductMainCard(
      name: 'Deli Style',
      off: 30,
      price: 30,
      photo: 'assets/images/4.png',
      view: 100,
      backColor: Color(0xFFFFFEEF),
    ),
  ]
};




class Datasearch extends SearchDelegate<String> {
  final name = [
    "Rio mare",
    "Ribsan",
    "Roffer",
    "mahmoud",
    "Hello",
    "jksd",
    "asd",
    "sdcsdvs",
    "dvvasc",
    "cas",
    "ascww",
    "cascac",
    "sdcsd",
    "nghg",
    "efwe",
    "ffvsdx",
    "ewrerrwe",
    "zxc",
    "sda",
    "koasck",
    "oscascaama",
  ];
  final recen = [
    "Tone",
    "Deli",
    "Rio mare",
    "Tapasco",
  ];
////////////////////////////////////////////////////////////////////////////////////////////////
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      ),
      IconButton(
        icon: Icon(Icons.filter_alt),
        onPressed: () async {
          DateTime? newtime = await showDatePicker(
            builder: (context, child) {
                  return Theme(
                      data: ThemeData.light().copyWith(
                    
                         colorScheme: ColorScheme.light(primary: maincolor!),
                      ),
                      child: child!);
                },
            context: context,
            initialDate: homeControl.dateSearch.value
            firstDate: DateTime(2021),
            lastDate: DateTime(2030),
          );
          print(homeControl.dateSearch.value);

          if (newtime != null) {
           homeControl.dateSearch.value= newtime;
            print(homeControl.dateSearch.value);
            homeControl.gotoDate();
          }
        },
      ),
    ];
    // throw UnimplementedError();
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        Get.to(Home());
      },
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
    );
    //throw UnimplementedError();
  }

  @override
  Widget buildResults(BuildContext context) {
    if (search![query] == null)
      return Center(
        child: Text(
          'Not Found element with this name :(',
          style: TextStyle(color: Colors.black38, fontWeight: FontWeight.w400),
        ),
      );
    return SingleChildScrollView(
      child: Wrap(
        children: search![query.toString()]!,
      ),
    );
    // throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final sugg =
        query.isEmpty ? recen : name.where((p) => p.startsWith(query)).toList();
    //throw UnimplementedError();
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          query = sugg[index];
          showResults(context);
        },
        leading: Icon(
          Icons.star,
        ),
        title: RichText(
          text: TextSpan(
            text: sugg[index].substring(0, query.length),
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                text: sugg[index].substring(query.length),
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
      itemCount: sugg.length,
    );
  }
}









class Optionbox extends StatelessWidget {
  String? maintext;
  IconData? ico;
  Optionbox({this.maintext, this.ico});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white10,
      height: 50,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              maintext!,
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 5),
            child: Icon(
              ico,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}









class ProductMainCard extends StatelessWidget {
  String? name;
  var off;
  var price;
  String? photo;
  Color? offColor = Colors.greenAccent.shade700;
  int? view;
  Color? backColor;
  int? id;
  var likes;
  ProductMainCard({
    required this.name,
    required this.off,
    required this.photo,
    required this.price,
    required this.view,
    this.backColor,
    this.id,
    this.likes,
  });
  @override
  Widget build(BuildContext context) {
    var hi = MediaQuery.of(context).size.height;
    var wi = MediaQuery.of(context).size.width;

    var subhi = hi * .395;
    var subwi = wi * .487;

    if (off == 30)
      offColor = Colors.greenAccent.shade700;
    else if (off == 50)
      offColor = Colors.orangeAccent.shade700;
    else
      offColor = Colors.redAccent.shade700;


    return Padding(
      padding: const EdgeInsets.all(2.0),
      child:  GestureDetector(
          onTap:(){
           Get.to(Detailespage());
            print(id);
              print(decontroler.userid.value);
          },
          child: Stack(
            children: [
              Container(
                height: subhi,
                width: subwi,
                decoration: BoxDecoration(
                  color: Color(0xFFFFF5E9),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
              Positioned(
                top: subhi * .0541666,
                left: subwi * .074150,
                right: wi * .487 * .074150,
                child: Container(
                  height: MediaQuery.of(context).size.height * .375 * .54083,
                  width: MediaQuery.of(context).size.width * .487 * .8155,
                  decoration: BoxDecoration(
                    color: backColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Image.asset(
                    photo!,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              ///////name ////
              Positioned(
                top: subhi * .616666,
                left: wi * .487 * .085557,
                child: Container(
                  width: wi * .487 * .49623,
                  child: Text(
                    name!,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? subhi * .070833
                          : subwi * .04996,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: subhi * .76166,
                left: wi * .487 * .05703,
                child: Row(
                  children: [
                    Text(
                      (view)!.toString(),
                      style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: MediaQuery.of(context).orientation ==
                                  Orientation.portrait
                              ? subhi * .05
                              : subwi * .02844,
                          fontWeight: FontWeight.bold),
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
                    Text(
                      likes.toString(),
                      style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: MediaQuery.of(context).orientation ==
                                  Orientation.portrait
                              ? subhi * .05
                              : subwi * .02844,
                          fontWeight: FontWeight.bold),
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
              Positioned(
                top: subhi * .8575,
                child: Container(
                  height: subhi * .158333,
                  width: subwi + 0.32,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    gradient: LinearGradient(
                      colors: [
                        Colors.orangeAccent.shade700,
                        Colors.amber.shade500,
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      '${(price)!}\$',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: subwi * .644535,
                top: subhi * .6166667,
                child: Text(
                  '${(off)!}%',
                  style: TextStyle(
                    color: offColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
            ],
          ),
        ),
      
    );
  }
}











class Categoris extends StatelessWidget {
  String? name;
  Color? color;
  var icon ;
  Categoris({
    required this.name,
    this.color,
    required this.icon,
  });
  HomeControler addcontrol = Get.put<HomeControler>(HomeControler());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: GestureDetector(
        onTap: () {
          addcontrol.updateIndex(name);
          print(name);
        },
        child: Container(
          height: 40,
          width: MediaQuery.of(context).size.width*.4,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              color!,
              maincolor!,
            ]),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left:20,),
            child: Row(
              children: [
                Icon(icon!,size: 20,color: Colors.white,),
                SizedBox(width: 5,),
                Text(
                  name!,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
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








class UpScrollCard extends StatelessWidget {
  String? photo;
  String? name;
  String? view;
  String? like;
  Color? backColor;
  UpScrollCard({
    this.like,
    this.name,
    this.photo,
    this.view,
    this.backColor,
  });
  @override
  Widget build(BuildContext context) {
    final hi  =MediaQuery.of(context).size.height;
    final wi  =MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: (){
          Get.to(Detailespage());  
                },
              child: Stack(
                children:[ Container(
            height: hi*.3125,
            width: wi*.9375,
            decoration: BoxDecoration(
              color: backColor,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Image.asset(
              photo!,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            child: Container(
              height:(hi*.3125) ,
              width: (wi*.9375)*.3,
               decoration: BoxDecoration(
              color: Colors.white70,
              
              borderRadius: BorderRadius.only(
                topRight : Radius.circular(10),
                bottomRight : Radius.circular(10),
              ),
            ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12,left: 5),
                    child: Container(
                      height:(hi*.3125)*.22 ,
                      child: Text('Chunk StylTuna',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.blue.shade800,fontSize: 25,fontWeight: FontWeight.bold,),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding:  EdgeInsets.only(left :wi*.07),
                    child: Row(children: [
                      Text('12',style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),),
                      SizedBox(width: 1,),
                      Icon(Icons.favorite,color: Colors.redAccent,size: 14,),
                      SizedBox(width: 3,),
                      Text('12',style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),),
                      SizedBox(width: 1,),
                      Icon(Icons.remove_red_eye , color:Colors.greenAccent.shade700,size: 14,),
                    ],),
                  ),
                Padding(
                    padding: const EdgeInsets.only(top: 8,left: 5),
                    child: Text('70\%',
                    style: TextStyle(color: Colors.red,fontSize: 30,
                    fontWeight: FontWeight.bold),
                    ),),
                ],
              ),
            ),
            ),
                ],
        ),
      ),
    );
  }
}
