import 'package:efundusv2/utils/constants.dart';
import "package:flutter/material.dart";

class Eventbanner extends StatelessWidget {
  const Eventbanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GestureDetector(
        onTap: () {},
        child: Container(
          margin: const EdgeInsets.only(bottom: 9.0),
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 3,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  image: const DecorationImage(
                      image: AssetImage("assets/courses/bootcamp.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
              Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                Container(
                  height: 50.0,
                  margin: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Text('Flutter bootcamp'),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: GestureDetector(
                          onTap: () {
                            Utils.kprint("You are genius man");
                          },
                          child: Container(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              children: const [
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 2.0),
                                  child: Text(
                                    " Read more ",
                                    style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Text(
                                  ">  ",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: Utils.secondaryColor,
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                ),
              ]),
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      ),
    );
  }
}
