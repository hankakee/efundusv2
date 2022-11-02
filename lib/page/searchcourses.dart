import 'dart:async';

import 'package:efundusv2/utils/constants.dart';
import 'package:efundusv2/widget/card_course.dart';
import 'package:efundusv2/widget/gridcourse.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SearchCourses extends StatefulWidget {
  final String needed;
  const SearchCourses({Key? key, required this.needed}) : super(key: key);

  @override
  State<SearchCourses> createState() => _SearchCoursesState();
}

class _SearchCoursesState extends State<SearchCourses> {
  //get all courses
  Future<String> getElearningBySearch() async {
    try {
      String jsonData =
          await rootBundle.loadString("staticdata/elearning.json");
      Utils.kprint(jsonData);
      await Future.delayed(const Duration(seconds: 10));
      return jsonData;
    } catch (err) {
      return "";
    }
  }

  @override
  Widget build(BuildContext context) {
    Utils.kprint("Widget needed : " + widget.needed);
    if (widget.needed.isEmpty) {
      return Text("No data found so we can load all courses...");
    }
    return Center(
      child: FutureBuilder(
        future: getElearningBySearch(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return snapshot.connectionState == ConnectionState.waiting
              ? const CircularProgressIndicator()
              : CardCourse(isFullScreen: true, named: "named");
        },
      ),
    );
    // return Future.delayed(Timer(const Duration(seconds: 2), () {}));
  }
}
