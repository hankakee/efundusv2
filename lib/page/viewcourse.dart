import 'package:efundusv2/page/home_page.dart';
import 'package:efundusv2/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:efundusv2/widget/card_course.dart';
import 'package:line_icons/line_icons.dart';

class ViewCourse extends StatefulWidget {
  const ViewCourse({Key? key}) : super(key: key);

  @override
  State<ViewCourse> createState() => _ViewCourseState();
}

class _ViewCourseState extends State<ViewCourse> {
  int _index = 0;
  final bool hide = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
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
              child: const Icon(
                LineIcons.arrowLeft,
                color: Colors.grey,
                size: 30.0,
              ),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
            );
          },
        ),
        actions: [
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
      body: SafeArea(
        child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
                child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      height: 400.0,
                      margin: const EdgeInsets.only(top: 10.0),
                      child: CardCourse(
                        isFullScreen: true,
                        hasDescribe: true,
                        hasleftShopppingIcon: true,
                        named: "Brither",
                      ),
                    ),
                    const Divider(),
                    Container(
                        width: double.infinity,
                        padding: const EdgeInsets.only(left: 10.0),
                        height: 30.0,
                        child: const Text(
                          "Beginner",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        )),
                    Container(
                        width: double.infinity,
                        height: 20.0,
                        padding: const EdgeInsets.only(left: 10.0),
                        child: const Text(
                          "Total : 23.46 hours",
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        )),
                    Container(
                        width: double.infinity,
                        height: 20.0,
                        padding: const EdgeInsets.only(left: 10.0),
                        child: const Text(
                          "Release date : 11 janvier 2020",
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        )),
                    Container(
                      child: Stepper(
                        elevation: 2,
                        controlsBuilder:
                            (BuildContext ctx, ControlsDetails dtl) {
                          // return Row(
                          //   children: <Widget>[
                          //     TextButton(
                          //       onPressed: dtl.onStepContinue,
                          //       child: Text(hide == true ? '' : 'NEXT'),
                          //     ),
                          //     TextButton(
                          //       onPressed: dtl.onStepCancel,
                          //       child: Text(hide == true ? '' : 'CANCEL'),
                          //     ),
                          //   ],
                          // );
                          return const SizedBox();
                        },
                        currentStep: _index,
                        onStepCancel: () {
                          if (_index > 0) {
                            setState(() {
                              _index -= 1;
                            });
                          }
                        },
                        onStepContinue: () {
                          if (_index <= 0) {
                            setState(() {
                              _index += 1;
                            });
                          }
                        },
                        onStepTapped: (int index) {
                          setState(() {
                            _index = index;
                          });
                        },
                        steps: <Step>[
                          Step(
                              title: Text('Partie 1 Introduction'),
                              content: Column(
                                children: [
                                  Container(
                                    width: double.infinity,
                                    alignment: Alignment.centerLeft,
                                    height: 30.0,
                                    child: Text("1- Programme du cours "),
                                  ),
                                  Container(
                                      height: 30.0,
                                      width: double.infinity,
                                      alignment: Alignment.centerLeft,
                                      child: Text("2- Demarrage de la langue")),
                                  Container(
                                      height: 30.0,
                                      width: double.infinity,
                                      alignment: Alignment.centerLeft,
                                      child: Text("3- Les pseudo-elements ")),
                                  Container(
                                      height: 30.0,
                                      width: double.infinity,
                                      alignment: Alignment.centerLeft,
                                      child: Text("4- Les loops en css ")),
                                  Container(
                                      width: double.infinity,
                                      height: 30.0,
                                      alignment: Alignment.centerLeft,
                                      child:
                                          Text("5- Structures condionnelles")),
                                ],
                              )),
                          Step(
                            title: Text('Developpement cours'),
                            content: Column(
                              children: [
                                Container(
                                    height: 30.0,
                                    width: double.infinity,
                                    alignment: Alignment.centerLeft,
                                    child: Text("6- Demarrage de la langue")),
                                Container(
                                    height: 30.0,
                                    width: double.infinity,
                                    alignment: Alignment.centerLeft,
                                    child: Text("7- Les pseudo-elements ")),
                                Container(
                                    height: 30.0,
                                    width: double.infinity,
                                    alignment: Alignment.centerLeft,
                                    child: Text("8- Les loops en css ")),
                                Container(
                                    width: double.infinity,
                                    height: 30.0,
                                    alignment: Alignment.centerLeft,
                                    child: Text("9- Structures condionnelles")),
                                Container(
                                  width: double.infinity,
                                  alignment: Alignment.centerLeft,
                                  height: 30.0,
                                  child: Text("9- Structures repetitives"),
                                ),
                              ],
                            ),
                          ),
                          Step(
                            title: Text('Partie 3'),
                            content: Column(
                              children: [
                                Container(
                                    height: 30.0,
                                    width: double.infinity,
                                    alignment: Alignment.centerLeft,
                                    child: Text("10- Demarrage de la langue")),
                                Container(
                                    height: 30.0,
                                    width: double.infinity,
                                    alignment: Alignment.centerLeft,
                                    child: Text("11- Les pseudo-elements ")),
                                Container(
                                    height: 30.0,
                                    width: double.infinity,
                                    alignment: Alignment.centerLeft,
                                    child: Text("12- Les loops en css ")),
                                Container(
                                    width: double.infinity,
                                    height: 30.0,
                                    alignment: Alignment.centerLeft,
                                    child:
                                        Text("13- Structures condionnelles")),
                                Container(
                                  width: double.infinity,
                                  alignment: Alignment.centerLeft,
                                  height: 30.0,
                                  child: Text("14- Structures repetitives"),
                                ),
                              ],
                            ),
                          ),
                          Step(
                            title: Text('Partie 4'),
                            content: Column(
                              children: [
                                Container(
                                    height: 30.0,
                                    width: double.infinity,
                                    alignment: Alignment.centerLeft,
                                    child: Text("15- Demarrage de la langue")),
                                Container(
                                    height: 30.0,
                                    width: double.infinity,
                                    alignment: Alignment.centerLeft,
                                    child: Text("16- Les pseudo-elements ")),
                                Container(
                                    height: 30.0,
                                    width: double.infinity,
                                    alignment: Alignment.centerLeft,
                                    child: Text("17- Les loops en css ")),
                                Container(
                                    width: double.infinity,
                                    height: 30.0,
                                    alignment: Alignment.centerLeft,
                                    child:
                                        Text("18- Structures condionnelles")),
                                Container(
                                  width: double.infinity,
                                  alignment: Alignment.centerLeft,
                                  height: 30.0,
                                  child: Text("19- Structures repetitives"),
                                ),
                              ],
                            ),
                          ),
                          Step(
                            title: Text('Developpement cours (last)'),
                            content: Column(
                              children: [
                                Container(
                                    height: 30.0,
                                    width: double.infinity,
                                    alignment: Alignment.centerLeft,
                                    child: Text("20- Demarrage de la langue")),
                                Container(
                                    height: 30.0,
                                    width: double.infinity,
                                    alignment: Alignment.centerLeft,
                                    child: Text("21- Les pseudo-elements ")),
                                Container(
                                    height: 30.0,
                                    width: double.infinity,
                                    alignment: Alignment.centerLeft,
                                    child: Text("22- Les loops en css ")),
                                Container(
                                    width: double.infinity,
                                    height: 30.0,
                                    alignment: Alignment.centerLeft,
                                    child:
                                        Text("23- Structures condionnelles")),
                                Container(
                                  width: double.infinity,
                                  alignment: Alignment.centerLeft,
                                  height: 30.0,
                                  child: Text("24- Structures repetitives"),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ))),
      ),
    );
  }
}
