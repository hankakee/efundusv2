import 'package:efundusv2/widget/card_course.dart';
import 'package:flutter/material.dart';

class CardCourseFactorySlider extends StatelessWidget {
  final int qty;
  const CardCourseFactorySlider({Key? key, required this.qty})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: qty,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 1.0),
              child: const CardCourse(isFullScreen: false, named: "Lbl named"),
            );
          }),
    );
  }
}
