import 'package:carousel_slider/carousel_slider.dart';
import 'package:efundusv2/page/searchcourses.dart';
import 'package:efundusv2/utils/constants.dart';
import 'package:efundusv2/widget/card_course.dart';
import 'package:efundusv2/widget/cardslider.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class Allcourses extends StatefulWidget {
  const Allcourses({Key? key}) : super(key: key);

  @override
  State<Allcourses> createState() => _AllcoursesState();
}

class _AllcoursesState extends State<Allcourses> {
  TextEditingController searchController = TextEditingController();
  bool initSearch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Utils.lightColor,
        centerTitle: true,
        automaticallyImplyLeading: false,
        leadingWidth: double.infinity,
        title: // textfield
            Container(
          width: double.infinity,
          height: 45.0,
          margin: const EdgeInsets.only(left: 1.0, right: 1.0, bottom: 4.0),
          child: TextFormField(
            obscureText: false,
            enableSuggestions: true,
            autocorrect: false,
            controller: searchController,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),
            decoration: const InputDecoration(
              icon: Icon(LineIcons.search, color: Color(0xFF5D9DEB)),
              hintText: "Search for a keyword",
              border: InputBorder.none,
            ),
            onChanged: (text) {
              Utils.kprint(text);
              if (text.isEmpty) {
                setState(() {
                  initSearch = false;
                });
              } else {
                setState(() {
                  initSearch = true;
                });
              }
            },
          ),
          decoration: BoxDecoration(
              // color: Colors.red,
              borderRadius: BorderRadius.circular(2.0),
              border: Border.all(width: 2, color: Utils.cardsColor)),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // initSearch
              //     ?
              //list of searched items
              // SizedBox(
              //     height: MediaQuery.of(context).size.height - 200,
              //     child: ListView(
              //       children: [
              //         wrapperCard(),
              //       ],
              //     ),
              //   )
              // :
              // // list of all items
              // ListView(
              //     // color: Colors.red,
              //     // height: MediaQuery.of(context).size.height - 200,
              //     children: [
              //       wrapperCard(),
              //       wrapperCard(),
              //       wrapperCard(),
              //       wrapperCard(),
              //       wrapperCard(),
              //       wrapperCard()
              //     ],
              //   )
              initSearch
                  ? Container(
                      height: MediaQuery.of(context).size.height,
                      // color: Colors.amberAccent,
                      child: CarouselSlider(
                          options: CarouselOptions(
                              height: 322.0,
                              reverse: false,
                              autoPlay: false,
                              enableInfiniteScroll: false,
                              // fulscreen carrousel
                              scrollDirection: Axis.vertical,
                              padEnds: false,
                              initialPage: 0),
                          items: [1, 2, 3].map((i) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Container(
                                  width: MediaQuery.of(context).size.width,
                                  child: CardCourse(
                                    isFullScreen: true,
                                    named: "widget.namecourse",
                                    hasDescribe: false,
                                    hasleftShopppingIcon: true,
                                  ),
                                );
                              },
                            );
                          }).toList()))
                  : Column(
                      children: [
                        SizedBox(
                          height: 320,
                          child: CardCourse(
                            isFullScreen: true,
                            named: "widget.namecourse",
                            hasDescribe: false,
                            hasleftShopppingIcon: true,
                          ),
                        ),

                        // Container(
                        //     height: 302,
                        //     child: CarouselSlider(
                        //         options: CarouselOptions(
                        //             // height: MediaQuery.of(context).size.height - 100,
                        //             height: 302,
                        //             reverse: false,
                        //             autoPlay: false,
                        //             enableInfiniteScroll: false,
                        //             // fulscreen carrousel
                        //             scrollDirection: Axis.horizontal,
                        //             // enlargeCenterPage: true,
                        //             padEnds: false,
                        //             initialPage: 0),
                        //         items: [1, 2, 3, 4, 5, 6, 7].map((i) {
                        //           return Builder(
                        //             builder: (BuildContext context) {
                        //               return Container(
                        //                 margin:
                        //                     const EdgeInsets.only(bottom: 10.0),
                        //                 // color: Colors.lightBlue,
                        //                 width: MediaQuery.of(context).size.width,
                        //                 child: CardCourse(
                        //                   isFullScreen: true,
                        //                   named: "widget.namecourse",
                        //                   hasDescribe: false,
                        //                   hasleftShopppingIcon: true,
                        //                 ),
                        //               );
                        //             },
                        //           );
                        //         }).toList())),
                      ],
                    )
            ],
          ),
          // color: Colors.yellow,
          // height: MediaQuery.of(context).size.height - 40,
        ),
      ),
    );
  }

  Widget wrapperCard() {
    return Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          children: [
            SizedBox(
                child: CardCourse(
              isFullScreen: true,
              named: "named",
              hasDescribe: false,
              hasleftShopppingIcon: true,
            )),
            Divider()
          ],
        ));
  }
}
