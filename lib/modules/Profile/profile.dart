import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytestapp2/MyColor.dart';
import 'package:mytestapp2/compo.dart';
import 'package:mytestapp2/modules/Detailes/detailesControler.dart';
import 'package:mytestapp2/modules/Detailes/detailspage.dart';
import 'package:mytestapp2/modules/EditProduct/editpage.dart';
import 'package:mytestapp2/modules/Profile/editProfile.dart';
import 'package:mytestapp2/modules/Profile/profileControler.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

ProfileControler cc = Get.put<ProfileControler>(ProfileControler());

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    return Container(
      color: Colors.orangeAccent.shade100,
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 260, top: 5),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.to(EditProfile());
                      },
                      icon: Icon(
                        Icons.mode_edit,
                        color: Colors.white,
                      ),
                    ),
                    Stack(
                      children: [
                        PopupMenuButton(
                          iconSize: 0,
                          color: Color(0xFFFFEDE6),
                          itemBuilder: (BuildContext context) => [
                            PopupMenuItem(
                              child: Row(
                                children: [
                                  Text('Mode'),
                                  SizedBox(width: 2),
                                  Icon(
                                    Icons.mode_night,
                                  ),
                                ],
                              ),
                            ),
                            PopupMenuItem(
                              child: Row(
                                children: [
                                  Text(
                                    'Trans',
                                  ),
                                  Icon(Icons.translate),
                                ],
                              ),
                            ),
                            PopupMenuItem(
                              child: Row(
                                children: [
                                  Text(
                                    'log out',
                                  ),
                                  Icon(Icons.logout),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          top: 14,
                          child: Icon(
                            Icons.settings,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      /* Colors.orangeAccent.shade100,
                      Colors.orangeAccent.shade100, */
                      maincolor!,
                      maincolor!,
                      /* maincolor!,
                      maincolor!,
                      maincolor!,
                      maincolor!, */
                      //Colors.orangeAccent.shade200,
                      /* Colors.orangeAccent.shade100,
                      Colors.orangeAccent.shade400,
                      Colors.orangeAccent.shade400,
                      Colors.orangeAccent.shade100, */
                      Colors.orangeAccent.shade100,
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                height: MediaQuery.of(context).size.height * .3,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Stack(
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                new AssetImage('assets/images/kok.jpg'),
                            // Image.asset('assets/images/profile.jpg'),
                          ),
                          Positioned(
                            left: 60,
                            top: 70,
                            child: CircleAvatar(
                              backgroundColor: Colors.grey.shade100,
                              radius: 15,
                              child: Icon(
                                Icons.camera_alt,
                                color: Colors.orange.shade800,
                                size: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Obx(
                      () => Text(
                        cc.name.value,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text('mahmoudkoka39@gmail.com',
                        style: TextStyle(
                          color: Colors.white,
                          shadows: [
                            Shadow(color: Colors.black, blurRadius: 20),
                          ],
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        )),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * .7,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Container(
                    child: StaggeredGridView.countBuilder(
                        itemCount: ProductsLists.mp.length,
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        itemBuilder: (c, i) {
                          return ProductsLists.mp[i];
                        },
                        staggeredTileBuilder: (index) {
                          return StaggeredTile.fit(1);
                        }),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
