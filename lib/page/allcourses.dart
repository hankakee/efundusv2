import 'package:carousel_slider/carousel_slider.dart';
import 'package:efundusv2/page/searchcourses.dart';
import 'package:efundusv2/utils/constants.dart';
import 'package:efundusv2/widget/card_course.dart';
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
    return SafeArea(
      child: Container(
        child: SingleChildScrollView(
          child: Container(
            height: 2000,
            child: Column(
              children: [
                SizedBox(
                  child: Column(children: [
                    const SizedBox(height: 20.0),
                    Container(
                      margin: const EdgeInsets.only(left: 5.0, right: 5.0),
                      child: TextFormField(
                        obscureText: false,
                        enableSuggestions: false,
                        autocorrect: false,
                        controller: searchController,
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                        decoration: const InputDecoration(
                          icon:
                              Icon(LineIcons.search, color: Color(0xFF5D9DEB)),
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
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(2.0),
                          border:
                              Border.all(width: 2, color: Utils.cardsColor)),
                    ),
                    initSearch
                        ? const SearchCourses(needed: "gridcourse needed")
                        : const SearchCourses(needed: "")
                  ]),
                ),
                //sliders
              ],
            ),
          ),
        ),
      ),
    );
  }
}
