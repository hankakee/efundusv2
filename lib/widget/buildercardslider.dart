import 'package:carousel_slider/carousel_slider.dart';
import 'package:efundusv2/widget/card_course.dart';
import 'package:flutter/material.dart';

class BuilderCardSlider extends StatelessWidget {
  final int qty;
  const BuilderCardSlider({Key? key, required this.qty}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
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
        }).toList());
  }
}
