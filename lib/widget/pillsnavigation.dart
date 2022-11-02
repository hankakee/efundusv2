import 'package:efundusv2/utils/constants.dart';
import "package:flutter/material.dart";

class Pillsnavigation extends StatelessWidget {
  final String title;
  final IconData icon;
  const Pillsnavigation({Key? key, required this.title, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6.0),
      width: 110.0,
      child: Center(
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(
            icon,
            size: 20.0,
            color: Utils.blackColor,
          ),
          const SizedBox(
            width: 1.0,
          ),
          Text(
            title,
            style: const TextStyle(
                fontSize: 12.0,
                color: Utils.blackColor,
                fontWeight: FontWeight.bold),
          ),
        ]),
      ),
      decoration: BoxDecoration(
          // 15
          color: Utils.cardsColor,
          borderRadius: BorderRadius.all(Radius.circular(16.0))),
    );
  }
}
