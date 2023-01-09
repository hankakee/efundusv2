import 'package:carousel_slider/carousel_slider.dart';
import 'package:efundusv2/model/_courses.dart';

import 'package:efundusv2/utils/constants.dart';
import 'package:efundusv2/widget/card_course.dart';
import 'package:efundusv2/widget/cardslider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
              borderRadius: BorderRadius.circular(2.0),
              border: Border.all(width: 2, color: Utils.cardsColor)),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //result of what you typed
              initSearch
                  ? Center(
                      child: FutureBuilder(
                          future: Course.byCourseName(searchController.text),
                          builder:
                              (BuildContext context, AsyncSnapshot snapshot) {
                            Utils.kprint(snapshot);
                            return snapshot.connectionState ==
                                    ConnectionState.waiting
                                ? SizedBox(
                                    width: double.infinity,
                                    height: MediaQuery.of(context).size.height -
                                        150,
                                    child: const Center(
                                        child: CircularProgressIndicator()),
                                  )
                                : Column(
                                    children: List.generate(
                                        snapshot.data.length, (index) {
                                    Course _oneCourse = snapshot.data[index];
                                    return SizedBox(
                                      height: 320,
                                      child: CardCourse(
                                        isFullScreen: true,
                                        courseObj: _oneCourse,
                                        hasDescribe: false,
                                        hasleftShopppingIcon: true,
                                      ),
                                    );
                                  }));
                          }))
                  : Center(
                      child: FutureBuilder(
                        future: Course.all(),
                        builder:
                            (BuildContext context, AsyncSnapshot snapshot) {
                          Utils.kprint(snapshot);
                          return snapshot.connectionState ==
                                  ConnectionState.waiting
                              ? SizedBox(
                                  width: double.infinity,
                                  height:
                                      MediaQuery.of(context).size.height - 150,
                                  child: const Center(
                                      child: CircularProgressIndicator()),
                                )
                              : Column(
                                  children: List.generate(snapshot.data.length,
                                      (index) {
                                  Course _oneCourse = snapshot.data[index];
                                  return Container(
                                    margin: const EdgeInsets.only(top: 15.0),
                                    height: 320,
                                    child: CardCourse(
                                      isFullScreen: true,
                                      courseObj: _oneCourse,
                                      hasDescribe: false,
                                      hasleftShopppingIcon: true,
                                    ),
                                  );
                                }));
                        },
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
