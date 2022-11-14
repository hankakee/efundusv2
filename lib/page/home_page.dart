import 'package:efundusv2/page/allcourses.dart';
import 'package:efundusv2/page/dashboard.dart';
import 'package:efundusv2/utils/constants.dart';
import 'package:efundusv2/utils/mesaj.dart';
import 'package:efundusv2/widget/pillsnavigation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:efundusv2/main.dart';
import 'package:efundusv2/page/onboarding_page.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  // final String title;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  String originlanguage = "US";
  final List<String> tabLanguage = ["HT", "US", "KR"];

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          // centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Row(children: [
            SizedBox(width: 30, child: Image.asset("assets/nlogo.png")),
            const Text(
              "Code9Class",
              style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: Color(0XFF5D9DEB)),
            )
          ]),
          leading: Builder(
            builder: (BuildContext context) {
              return GestureDetector(
                child: const Icon(LineIcons.bars),
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
          actions: [
            Center(
              child: SizedBox(
                width: 50.0,
                child: Center(
                  child: Stack(
                    children: [
                      const Positioned(
                        child: Icon(
                          LineIcons.shoppingBasket,
                          color: Colors.grey,
                          size: 28.0,
                        ),
                      ),
                      Positioned(
                        child: Container(
                          width: 16.0,
                          height: 16.0,
                          child: const Center(
                              child: Text(
                            "9+",
                            style: TextStyle(
                              fontSize: 8.0,
                              color: Colors.white,
                              // fontWeight: FontWeight.bold,
                            ),
                          )),
                          padding: const EdgeInsets.all(1.0),
                          decoration: const BoxDecoration(
                              color: Utils.secondaryColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            PopupMenuButton(
                child: const Padding(
                  padding: EdgeInsets.only(right: 15.0, left: 5.0),
                  child: Icon(
                    Icons.translate_sharp,
                    color: Colors.grey,
                    size: 24,
                  ),
                ),
                offset: const Offset(0, 50),
                itemBuilder: (context) {
                  return [
                    const PopupMenuItem(child: Text("Item 1")),
                    const PopupMenuItem(child: Text("Item 2")),
                    const PopupMenuItem(child: Text("Item 3")),
                  ];
                }),
          ],
        ),
        drawer: Drawer(
          child: OverflowBox(
            child: ListView(children: [
              Container(
                  padding: const EdgeInsets.only(top: 10.0, right: 10.0),
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.close,
                    ),
                  )),
              Container(
                child: Center(
                  child: Container(
                      margin: const EdgeInsets.only(top: 10.0),
                      width: 200.0,
                      height: 200.0,
                      child: Column(
                        children: [
                          SizedBox(
                              height: 40, child: Text("assets/eboutik.png")),
                          "pic" == 'profile'
                              ? Icon(
                                  Icons.account_circle_rounded,
                                  size: 90.0,
                                  // color: primaryAppColor
                                )
                              : Container(
                                  width: 100.0,
                                  height: 100.0,
                                  // decoration: BoxDecoration(
                                  //   shape: BoxShape.circle,
                                  //   image: DecorationImage(
                                  //       image: NetworkImage(""),
                                  //       fit: BoxFit.cover),
                                  // ),
                                ),
                          const Center(
                            child: Text(
                              "nameclient",
                              style: TextStyle(
                                fontSize: 15.0,
                                // color: primaryAppColor
                              ),
                            ),
                          ),
                          const Center(
                            child: Text(
                              "mailclient",
                              style: TextStyle(
                                fontSize: 15.0,
                                //  color: primaryAppColor
                              ),
                            ),
                          )
                        ],
                      )),
                ),
                // decoration: const BoxDecoration(
                //   image: DecorationImage(
                //       image: AssetImage("assets/bannerlog.png"),
                //       fit: BoxFit.cover),
                // ),
                height: 250.0,
                width: double.infinity,
              ),
              ListTile(
                  onTap: () {},
                  title: Row(
                    children: [
                      Container(
                          padding: const EdgeInsets.only(right: 10),
                          child: const Icon(
                            Icons.lock_open,
                            size: 17,
                          )),
                      const Text(
                        "Connexion",
                        style: TextStyle(fontSize: 14.0),
                      ),
                    ],
                  )),
              ListTile(
                  onTap: () {},
                  title: Row(
                    children: [
                      Container(
                          padding: const EdgeInsets.only(right: 10),
                          child: const Icon(
                            Icons.lock_open,
                            size: 17,
                          )),
                      const Text(
                        "Rappel d'apprentissage",
                        style: TextStyle(fontSize: 14.0),
                      ),
                    ],
                  )),
              ListTile(
                  onTap: () {},
                  title: Row(
                    children: [
                      Container(
                          padding: const EdgeInsets.only(right: 10),
                          child: const Icon(
                            Icons.lock_open,
                            size: 17,
                          )),
                      const Text(
                        "Categories",
                        style: TextStyle(fontSize: 14.0),
                      ),
                    ],
                  )),
              ListTile(
                  onTap: () {},
                  title: Row(
                    children: [
                      Container(
                          padding: const EdgeInsets.only(right: 10),
                          child: const Icon(
                            Icons.lock_open,
                            size: 17,
                          )),
                      const Text(
                        "Tutorials",
                        style: TextStyle(fontSize: 14.0),
                      ),
                    ],
                  )),
              ListTile(
                  onTap: () {},
                  title: Row(
                    children: [
                      Container(
                          padding: const EdgeInsets.only(right: 10),
                          child: const Icon(
                            Icons.lock_open,
                            size: 17,
                          )),
                      const Text(
                        "Tutorials",
                        style: TextStyle(fontSize: 14.0),
                      ),
                    ],
                  )),
              ListTile(
                  onTap: () {},
                  title: Row(
                    children: [
                      Container(
                          padding: const EdgeInsets.only(right: 10),
                          child: const Icon(
                            Icons.lock_open,
                            size: 17,
                          )),
                      const Text(
                        "Tutorials",
                        style: TextStyle(fontSize: 14.0),
                      ),
                    ],
                  )),
              ListTile(
                  onTap: () {},
                  title: Row(
                    children: [
                      Container(
                          padding: const EdgeInsets.only(right: 10),
                          child: const Icon(
                            Icons.lock_open,
                            size: 17,
                          )),
                      const Text(
                        "Tutorials",
                        style: TextStyle(fontSize: 14.0),
                      ),
                    ],
                  )),
              ListTile(
                  onTap: () {},
                  title: Row(
                    children: [
                      Container(
                          padding: const EdgeInsets.only(right: 10),
                          child: const Icon(
                            Icons.lock_open,
                            size: 17,
                          )),
                      const Text(
                        "roonso",
                        style: TextStyle(fontSize: 14.0),
                      ),
                    ],
                  )),
              ListTile(
                  onTap: () {},
                  title: Row(
                    children: [
                      Container(
                          padding: const EdgeInsets.only(right: 10),
                          child: const Icon(
                            Icons.lock_open,
                            size: 17,
                          )),
                      const Text(
                        "roonso",
                        style: TextStyle(fontSize: 14.0),
                      ),
                    ],
                  )),
              ListTile(
                  onTap: () {},
                  title: Row(
                    children: [
                      Container(
                          padding: const EdgeInsets.only(right: 10),
                          child: const Icon(
                            Icons.lock_open,
                            size: 17,
                          )),
                      const Text(
                        "roonso",
                        style: TextStyle(fontSize: 14.0),
                      ),
                    ],
                  )),
              ListTile(
                  onTap: () {},
                  title: Row(
                    children: [
                      Container(
                          padding: const EdgeInsets.only(right: 10),
                          child: const Icon(
                            Icons.lock_open,
                            size: 17,
                          )),
                      const Text(
                        "roonso",
                        style: TextStyle(fontSize: 14.0),
                      ),
                    ],
                  )),
            ]),
          ),
        ),
        body: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: _chooseFrame(_selectedIndex),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 2.0,
          selectedFontSize: 0,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          iconSize: 26.0,
          // fixedColor: Colors.red,
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Utils.blackColor,
          unselectedItemColor: Colors.grey,
          currentIndex: _selectedIndex,
          onTap: _changeIndex,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              activeIcon: Pillsnavigation(title: "Home", icon: LineIcons.home),
              icon: Icon(
                LineIcons.home,
              ),
              label: 'Home',
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                LineIcons.bookOpen,
              ),
              label: 'Courses',
              activeIcon:
                  Pillsnavigation(title: "Courses", icon: LineIcons.bookOpen),
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                LineIcons.shoppingBasket,
              ),
              label: 'Search',
              activeIcon: Pillsnavigation(
                  title: "Cart", icon: LineIcons.shoppingBasket),
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                LineIcons.user,
              ),
              label: 'My account',
              activeIcon:
                  Pillsnavigation(title: "Account", icon: LineIcons.user),
            ),
          ],
        ),
      );

  void goToOnBoarding(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => OnBoardingPage()),
      );

  Widget? _chooseFrame(index) {
    const iFrames = {
      0: Dashboard(),
      1: Allcourses(),
      2: Center(
        child: Text("Search..."),
      ),
      3: Center(
        child: Text("User..."),
      )
    };
    return iFrames[index];
  }

  void _changeIndex(int index) {
    // Utils.kprint(index);
    setState(() {
      _selectedIndex = index;
    });
  }
}
