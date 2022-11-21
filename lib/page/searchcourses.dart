import 'dart:async';

import 'package:efundusv2/utils/constants.dart';
import 'package:efundusv2/widget/card_course.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SearchCourses extends StatefulWidget {
  final String needed;
  const SearchCourses({Key? key, required this.needed}) : super(key: key);

  @override
  State<SearchCourses> createState() => _SearchCoursesState();
}

class _SearchCoursesState extends State<SearchCourses> {
  bool initSearch = true;

  //get all courses
  Future<String> getElearningBySearch() async {
    try {
      String jsonData =
          await rootBundle.loadString("staticdata/elearning.json");
      // await Future.delayed(const Duration(seconds: 3));
      return jsonData;
    } catch (err) {
      return "";
    }
  }

  @override
  Widget build(BuildContext context) {
    Utils.kprint("Widget needed : " + widget.needed);
    if (widget.needed.isEmpty) {
      return const Text("No data found so we can load all courses...");
    }
    return Center(
      child: FutureBuilder(
        future: getElearningBySearch(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          // Utils.kprint(snapshot);
          return snapshot.connectionState == ConnectionState.waiting
              ? const CircularProgressIndicator()
              : Container(
                  // color: Colors.amberAccent,
                  height: MediaQuery.of(context).size.height - 220,
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 13,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: const [
                                SizedBox(
                                    child: CardCourse(
                                        isFullScreen: true,
                                        named: "Nam djima")),
                                Divider()
                              ],
                            ));
                      }),
                );
        },
      ),
    );
    // return Future.delayed(Timer(const Duration(seconds: 2), () {}));
  }
}
