import 'package:efundusv2/widget/card_course.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

// class CardCourseFactorySlider extends StatelessWidget {
//   final int qty;
//   final String namecourse = "";
//   const CardCourseFactorySlider({Key? key, required this.qty})
//       : super(key: key);

class CardCourseFactorySlider extends StatefulWidget {
  final int qty;
  final String namecourse = "";
  const CardCourseFactorySlider({Key? key, required this.qty});

  @override
  State<CardCourseFactorySlider> createState() =>
      _CardCourseFactorySliderState();
}

class _CardCourseFactorySliderState extends State<CardCourseFactorySlider> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 302.0,
        child: CarouselSlider(
            options: CarouselOptions(
                height: 300.0,
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
                    child: CardCourse(
                      isFullScreen: false,
                      named: widget.namecourse,
                      hasDescribe: false,
                      hasleftShopppingIcon: true,
                    ),
                  );
                },
              );
            }).toList()));
  }
}
