import 'package:efundusv2/utils/constants.dart';
import 'package:efundusv2/widget/card_course.dart';
import 'package:efundusv2/widget/eventbanner.dart';
import 'package:efundusv2/widget/pillscategories.dart';
import "package:flutter/material.dart";
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          child: SingleChildScrollView(
            // shrinkWrap: true,
            // color: const Color(0XFFF9F9F9),
            child: SizedBox(
              height: 1700,
              child: Column(children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  // child: Container(
                  //   height: 50,
                  //   child: Column(children: [
                  //     Padding(
                  //       padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  //       child: TextFormField(
                  //         obscureText: false,
                  //         enableSuggestions: false,
                  //         autocorrect: false,
                  //         controller: searchController,
                  //         style: const TextStyle(
                  //           fontSize: 15,
                  //           color: Colors.black,
                  //         ),
                  //         decoration: const InputDecoration(
                  //           icon: Icon(LineIcons.search, color: Color(0xFF5D9DEB)),
                  //           hintText: "Search for a keyword",
                  //           // border: InputBorder.none,
                  //         ),
                  //       ),
                  //     ),
                  //   ]),
                  //   // decoration: BoxDecoration(
                  //   //     color: Colors.white,
                  //   //     borderRadius: BorderRadius.circular(25),
                  //   //     border:
                  //   //         Border.all(width: 1, color: const Color(0XFF707070)))
                  // ),
                ),
                //categories
                const Eventbanner(),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Popular courses",
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.grey, fontSize: 17.0),
                    ),
                    Text(
                      "See more +",
                      textAlign: TextAlign.right,
                      style: TextStyle(color: Colors.grey, fontSize: 13.0),
                    )
                  ],
                ),

                //sliders
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: SizedBox(
                      // width: double.infinity,
                      child: CarouselSlider(
                          options: CarouselOptions(
                              height: 302.0,
                              reverse: false,
                              autoPlay: false,
                              enableInfiniteScroll: false,
                              // fulscreen carrousel
                              padEnds: false,
                              initialPage: 0),
                          items: [1, 2, 3, 4, 5].map((i) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Container(
                                  width: MediaQuery.of(context).size.width,
                                  child: const CardCourse(
                                    isFullScreen: false,
                                    named: "",
                                  ),
                                );
                              },
                            );
                          }).toList())),
                ),

                //categories
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Popular categories",
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.grey, fontSize: 17.0),
                      ),
                      Text(
                        "",
                        textAlign: TextAlign.right,
                        style: TextStyle(color: Colors.grey, fontSize: 13.0),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: SizedBox(
                    height: 32.0,
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            child: const Pillscategories(
                              title: "JavaScript",
                            ),
                            onTap: () {
                              Utils.kprint("Print js");
                            },
                          );
                        }),
                  ),
                ),

                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Last tutorials",
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.grey, fontSize: 17.0),
                    ),
                    Text(
                      "",
                      textAlign: TextAlign.right,
                      style: TextStyle(color: Colors.grey, fontSize: 13.0),
                    )
                  ],
                ),

                //sliders
                // TODO remettre plus tard
                Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: CarouselSlider(
                        options: CarouselOptions(
                            height: 302.0,
                            reverse: false,
                            autoPlay: false,
                            enableInfiniteScroll: false,
                            // fulscreen carrousel
                            padEnds: false,
                            initialPage: 0),
                        items: [1, 2, 3, 4, 5].map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                width: MediaQuery.of(context).size.width,
                                child: const CardCourse(
                                  isFullScreen: false,
                                  named: "",
                                ),
                              );
                            },
                          );
                        }).toList())),
                const SizedBox(height: 20.0),
                const Text(
                  "Small budget?",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Utils.variantpColor, fontSize: 27.0),
                ),
                const Text(
                  "Here's special discount for you",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey, fontSize: 15.0),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: CarouselSlider(
                        options: CarouselOptions(
                            height: 302.0,
                            reverse: false,
                            autoPlay: false,
                            enableInfiniteScroll: false,
                            // fulscreen carrousel
                            padEnds: false,
                            initialPage: 0),
                        items: [1, 2, 3, 4, 5].map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                width: MediaQuery.of(context).size.width,
                                child: const CardCourse(
                                  isFullScreen: false,
                                  named: "",
                                ),
                              );
                            },
                          );
                        }).toList())),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
