import 'package:efundusv2/utils/constants.dart';
import "package:flutter/material.dart";
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CardCourse extends StatelessWidget {
  final bool isFullScreen;
  final String named;
  const CardCourse({Key? key, required this.isFullScreen, required this.named})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isFullScreen
          ? MediaQuery.of(context).size.width
          : MediaQuery.of(context).size.width / 1.3,
      height: 300.0,
      margin: const EdgeInsets.only(left: 5.0, top: 5.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          height: 150.0,
          child: Stack(
            children: [
              GestureDetector(
                child: Image.asset(
                  "assets/courses/htmlcsscourse.jpg",
                  fit: BoxFit.cover,
                  width: isFullScreen
                      ? MediaQuery.of(context).size.width
                      : MediaQuery.of(context).size.width / 1.3,
                ),
              ),
              Positioned(
                  right: 5.0,
                  top: 5.0,
                  child: Icon(
                    Icons.shopping_basket_outlined,
                    // Icons.shopping_basket_rounded,
                    color: Utils.cardsColor,
                  )),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          // padding: const EdgeInsets.only(top: 4.0),
          child: Text(
            named,
            textAlign: TextAlign.left,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
          ),
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
          child: const Text(
            "Michel Karnet ,Cyber carnet formations",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 11.0),
          ),
        ),
        Row(
          children: [
            const Text("3,5"),
            RatingBarIndicator(
              rating: 3.5,
              direction: Axis.horizontal,
              itemCount: 5,
              itemSize: 20.0,
              itemBuilder: (context, index) => const Icon(
                Icons.star,
                color: Utils.secondaryColor,
              ),
            ),
            const Text("(439)"),
          ],
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 3.0),
          child: Row(
            children: const [
              Text("84.02",
                  style:
                      TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
              Text(" HTG",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold))
            ],
          ),
        ),
        Container(
          width: 90.0,
          padding: const EdgeInsets.all(3.0),
          margin: const EdgeInsets.only(top: 3.0),
          color: Utils.primaryColor,
          child: const Text(
            "Nouveau",
            style:
                TextStyle(color: Utils.lightColor, fontWeight: FontWeight.bold),
          ),
        ),
      ]),
      decoration: BoxDecoration(
        // color: Utils.cardsColor,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
