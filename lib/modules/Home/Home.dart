import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mytestapp2/modules/Add%20Products/addProduct.dart';
import 'package:mytestapp2/modules/Detailes/detailesControler.dart';
import 'package:mytestapp2/modules/Detailes/detailspage.dart';
import 'package:mytestapp2/modules/Home/HomeControler.dart';
import 'package:mytestapp2/modules/Profile/profile.dart';
import 'package:mytestapp2/modules/login/loginPage.dart';
import 'package:mytestapp2/productsModel.dart';
import '../../MyColor.dart';
import '../../main.dart';
import '../signup/SignUp.dart';
import 'package:mytestapp2/compo.dart';
import 'package:get/get.dart';

DetailesControler cardControler =
    Get.put<DetailesControler>(DetailesControler());
HomeControler homeControl = Get.put<HomeControler>(HomeControler());

//List<ChipsData> choischips = ChoisChips.all;
final List<Widget> bottomBarIcons = [
  Icon(
    Icons.home,
  ),
  Icon(
    Icons.add,
  ),
  Icon(
    Icons.person,
  ),
];
final screen = [
  Home(),
  Addproduct(),
  Profile(),
];
int id = 1;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final bottomkey = GlobalKey<CurvedNavigationBarState>();

  @override
  Widget build(BuildContext context) {
    Get.testMode = true;

    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBody: true,
      /* bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          iconTheme: IconThemeData(color: Colors.white, size: 35),
        ),
        key: bottomkey,
        child: CurvedNavigationBar(
          animationCurve: Curves.easeInOutSine,
          animationDuration: Duration(milliseconds: 500),
          buttonBackgroundColor: Color(0xFFDD5E2B),
          backgroundColor: Colors.transparent,
          color: Color(0xFFDD5E2B),
          height: 50,
          items: bottomBarIcons,
          index: id,
          onTap: (id) {
            setState(() {
              this.id = id;
            });
          },
        ),
      ), */
      body: SingleChildScrollView(
        child: SafeArea(
          bottom: true,
          child: Column(
            children: [
              Container(
                height: 200,
                width: wi,
                child: Stack(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          UpScrollCard(
                            photo: 'assets/images/9.png',
                            backColor: Colors.blueAccent.shade100,
                          ),
                          UpScrollCard(
                            photo: 'assets/images/7.png',
                            backColor: Colors.redAccent.shade100,
                          ),
                          UpScrollCard(
                            photo: 'assets/images/10.png',
                            backColor: Colors.amberAccent.shade100,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: wi * .85,
                      top: hi * .02,
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.greenAccent,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 20,
                              ),
                            ]),
                        child: CircleAvatar(
                          backgroundColor: Colors.grey.shade100,
                          radius: 25,
                          child: IconButton(
                            onPressed: () {
                              showSearch(
                                  context: context, delegate: Datasearch());
                            },
                            icon: Icon(
                              Icons.search,
                              color: maincolor,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            color: Color(0xFFEEEEEE),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Categoris(
                                    name: 'All',
                                    color: Colors.orange.shade400,
                                    icon: Icons.all_inbox,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Container(
                                    height: 20,
                                    width: 1,
                                    color: Colors.blueGrey,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        Categoris(
                                          name: 'Food',
                                          color: Colors.redAccent,
                                          icon: Icons.food_bank,
                                        ),
                                        Categoris(
                                          name: 'Painting',
                                          color: Colors.greenAccent.shade400,
                                          icon: Icons.format_paint,
                                        ),
                                        Categoris(
                                          name: 'Drinks',
                                          color: Colors.blueAccent.shade400,
                                          icon: Icons.local_drink,
                                        ),
                                        Categoris(
                                          name: 'Hygiene',
                                          color: Colors.amberAccent.shade400,
                                          icon: Icons.cleaning_services,
                                        ),
                                        Categoris(
                                          name: 'Makeups',
                                          color: Colors.pinkAccent.shade400,
                                          icon: Icons.emoji_symbols_rounded,
                                        ),
                                        Categoris(
                                          name: 'Medicines',
                                          color: Colors.purpleAccent.shade400,
                                          icon: Icons.medical_services,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width * .75),
                            child: Stack(
                              children: [
                                Container(
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFFA7642),
                                      borderRadius: BorderRadius.circular(7)),
                                  width: MediaQuery.of(context).size.width * .2,
                                  child: Center(
                                    child: PopupMenuButton(
                                      iconSize: 0,
                                      color: Color(0xFFFFEDE6),
                                      itemBuilder: (BuildContext context) => [
                                        PopupMenuItem(
                                          child: Text('-'),
                                          value: 'All',
                                        ),
                                        PopupMenuItem(
                                          child: Row(
                                            children: [
                                              Text('A to Z'),
                                              Icon(Icons.arrow_drop_down),
                                            ],
                                          ),
                                          value: 'A to Z',
                                        ),
                                        PopupMenuItem(
                                          child: Row(
                                            children: [
                                              Text('Z to A'),
                                              Icon(Icons.arrow_drop_up),
                                            ],
                                          ),
                                          value: 'Z to A',
                                        ),
                                      ],
                                      onSelected: (String value) {
                                        homeControl.sortA.value = value;
                                        //هاد تابع تعديل او جلب منتجات الي بدك
                                        homeControl.getProduct();
                                      },
                                    ),
                                  ),
                                ),
                                Positioned(
                                    top: MediaQuery.of(context).size.height *
                                        .01,
                                    left:
                                        MediaQuery.of(context).size.width * .02,
                                    right:
                                        MediaQuery.of(context).size.width * .02,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.sort_by_alpha_outlined,
                                          color: Colors.white,
                                          size: 15,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Obx(
                                          () => Text(
                                            homeControl.sortA.value.toString(),
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: MediaQuery.of(context)
                                                          .orientation ==
                                                      Orientation.portrait
                                                  ? 13
                                                  : 20,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ))
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Obx(
                            () => Wrap(
                              children:
                                  homeControl.all[homeControl.listIndex.value],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
/* //TODO: ما بعرف اذا شغالة معك طريقة جلب المنتجات بما انو صار في ترتيب ابجدي 
 بس فيكي اذا بدك مثلاً تقليو جيب المنتجات حسب الكي الي هو اما :
 ALL
 A to Z
 Z to A

 اشتغلي براحتك ... بس حبيت نوهك يعني :)
 */
