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
    return SafeArea(
      child: SingleChildScrollView(
        // color: Colors.yellow,
        // height: MediaQuery.of(context).size.height - 40,
        child: Column(
          children: [
            // textfield
            Container(
              height: 50.0,
              margin:
                  const EdgeInsets.only(left: 5.0, right: 5.0, bottom: 10.0),
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
            initSearch
                ?
                //list of all items
                SizedBox(
                    height: MediaQuery.of(context).size.height - 200,
                    child: ListView(
                      children: [
                        wrapperCard(),
                      ],
                    ),
                  )
                :
                //list of searched items
                Container(
                    height: MediaQuery.of(context).size.height - 200,
                    child: ListView(
                      children: [
                        wrapperCard(),
                        wrapperCard(),
                        wrapperCard(),
                        wrapperCard(),
                        wrapperCard(),
                        wrapperCard()
                      ],
                    ),
                  )
          ],
        ),
        // child: ListView(children: [
        //   const SizedBox(height: 10.0),

        //   // textfield
        //   Container(
        //     margin: const EdgeInsets.only(left: 5.0, right: 5.0),
        //     child: TextFormField(
        //       obscureText: false,
        //       enableSuggestions: false,
        //       autocorrect: false,
        //       controller: searchController,
        //       style: const TextStyle(
        //         fontSize: 15,
        //         color: Colors.black,
        //       ),
        //       decoration: const InputDecoration(
        //         icon: Icon(LineIcons.search, color: Color(0xFF5D9DEB)),
        //         hintText: "Search for a keyword",
        //         border: InputBorder.none,
        //       ),
        //       onChanged: (text) {
        //         Utils.kprint(text);
        //         if (text.isEmpty) {
        //           setState(() {
        //             initSearch = false;
        //           });
        //         } else {
        //           setState(() {
        //             initSearch = true;
        //           });
        //         }
        //       },
        //     ),
        //     decoration: BoxDecoration(
        //         color: Colors.white,
        //         borderRadius: BorderRadius.circular(2.0),
        //         border: Border.all(width: 2, color: Utils.cardsColor)),
        //   ),

        //
        //       ? List.generate(5, (index) =>  wrapperCard())
        //       : const Text("Nothing..."),
        // ]),
      ),
    );
  }

  Widget wrapperCard() {
    return Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          children: const [
            SizedBox(child: CardCourse(isFullScreen: true, named: "named")),
            Divider()
          ],
        ));
  }
}
