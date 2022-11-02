import 'package:efundusv2/utils/constants.dart';
import "package:flutter/material.dart";

class Pillscategories extends StatelessWidget {
  final String title;
  const Pillscategories({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              const Icon(Icons.add_outlined, color: Colors.white),
              Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: Utils.cardsColor,
            borderRadius: BorderRadius.circular(4.0),
          ),
        ),
      ),
    );
  }
}
