import 'dart:async';

import 'package:efundusv2/utils/constants.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class Course {
  Course({
    required this.id,
    required this.type,
    required this.category,
    required this.imgUrl,
    required this.reviews,
    required this.rate,
    required this.price,
    required this.oldprice,
    required this.currency,
    required this.info,
    required this.description,
    required this.level,
    required this.hours,
    required this.pTrainer,
    required this.sTrainer,
    required this.tag,
    required this.related,
    required this.coursename,
    required this.releasedate,
  });

  int id;
  String type;
  String category;
  dynamic imgUrl;
  int reviews;
  double rate;
  int price;
  double oldprice;
  String currency;
  String info;
  dynamic description;
  String level;
  double hours;
  String pTrainer;
  String sTrainer;
  String tag;
  String related;
  String coursename;
  String releasedate;

  factory Course.fromMap(Map<String, dynamic> json) => Course(
        id: json["id"] ?? 0,
        type: json["type"] ?? "",
        category: json["category"] ?? "",
        imgUrl: json["imgUrl"] ?? "",
        reviews: json["reviews"] ?? "",
        rate: json["rate"].toDouble() ?? 0,
        price: json["price"] ?? 0,
        oldprice: json["oldprice"].toDouble() ?? 0,
        currency: json["currency"] ?? "",
        info: json["info"] ?? "",
        description: json["description"] ?? "",
        level: json["level"] ?? "",
        hours: json["hours"].toDouble() ?? 0,
        pTrainer: json["p_trainer"] ?? "",
        sTrainer: json["s_trainer"] ?? "",
        tag: json["tag"] ?? "",
        related: json["related"] ?? "",
        coursename: json["coursename"] ?? "",
        releasedate: json["releasedate"] ?? "",
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "type": type,
        "category": category,
        "imgUrl": imgUrl,
        "reviews": reviews,
        "rate": rate,
        "price": price,
        "oldprice": oldprice,
        "currency": currency,
        "info": info,
        "description": description,
        "level": level,
        "hours": hours,
        "p_trainer": pTrainer,
        "s_trainer": sTrainer,
        "tag": tag,
        "related": related,
        "coursename": coursename,
        "releasedate": releasedate,
      };

  factory Course.fromJson(String source) => Course.fromMap(json.decode(source));

  static List<dynamic> decodeString(source) => json.decode(source);

  //get all courses
  static Future<List<Course>> all() async {
    try {
      String jsonData =
          await rootBundle.loadString("staticdata/elearning.json");
      List<dynamic> liststr = decodeString(jsonData);
      List<Course> courseList = liststr.map<Course>((thisCourse) {
        return Course.fromMap(thisCourse);
      }).toList();
      // await Future.delayed(const Duration(seconds: 1));
      return courseList;
    } catch (err) {
      return [];
    }
  }

  //get all by name course
  static Future<List<Course>> byCourseName(String nameCourse) async {
    Utils.kprint("needed name: " + nameCourse);
    if (nameCourse != "") {
      try {
        String jsonData =
            await rootBundle.loadString("staticdata/elearning.json");
        Utils.kprint("must have it");
        List<dynamic> liststr = decodeString(jsonData);
        List<Course> courseList = liststr.map<Course>((thisCourse) {
          return Course.fromMap(thisCourse);
        }).toList();
        Utils.kprint("end must have it");
        // Timer(const Duration(seconds: 2), () {});
        return courseList;
      } catch (err) {
        return [];
      }
    }
    return [];
  }
}
