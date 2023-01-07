import 'dart:async';

import 'package:efundusv2/utils/constants.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class Course {
  Course({
    this.id,
    this.type,
    this.category,
    this.imgUrl,
    this.reviews,
    this.rate,
    this.price,
    this.oldprice,
    this.currency,
    this.info,
    this.description,
    this.level,
    this.hours,
    this.pTrainer,
    this.sTrainer,
    this.tag,
    this.related,
    this.coursename,
    this.releasedate,
  });

  int? id;
  String? type;
  String? category;
  dynamic imgUrl;
  int? reviews;
  double? rate;
  int? price;
  int? oldprice;
  String? currency;
  String? info;
  dynamic description;
  String? level;
  double? hours;
  String? pTrainer;
  String? sTrainer;
  String? tag;
  String? related;
  String? coursename;
  String? releasedate;

  Course? courseFromJson(String str) => Course.fromJson(json.decode(str));
  String courseToJson(Course? data) => json.encode(data!.toJson());

  factory Course.fromJson(Map<String, dynamic> json) => Course(
        id: json["id"],
        type: json["type"],
        category: json["category"],
        imgUrl: json["imgUrl"],
        reviews: json["reviews"],
        rate: json["rate"].toDouble(),
        price: json["price"],
        oldprice: json["oldprice"],
        currency: json["currency"],
        info: json["info"],
        description: json["description"],
        level: json["level"],
        hours: json["hours"].toDouble(),
        pTrainer: json["p_trainer"],
        sTrainer: json["s_trainer"],
        tag: json["tag"],
        related: json["related"],
        coursename: json["coursename"],
        releasedate: json["releasedate"],
      );

  Map<String, dynamic> toJson() => {
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

  //get all courses
  Future<String> all(String attrib) async {
    try {
      String jsonData =
          await rootBundle.loadString("staticdata/elearning.json");
      // await Future.delayed(const Duration(seconds: 3));
      Utils.kprint(jsonData);
      return jsonData;
    } catch (err) {
      return "";
    }
  }

  //get all by name course
  Future<String> byCourseName(String nameCourse) async {
    Utils.kprint("needed name: " + nameCourse);
    if (nameCourse != "") {
      try {
        String jsonData =
            await rootBundle.loadString("staticdata/elearning.json");
        // Map<String, dynamic> decodedData = jsonDecode(jsonData);
        // decodedData.forEach((key, value) {
        //   print('Key: $key, Value: $value');
        // });
        Utils.kprint(courseFromJson(jsonData));
        // return jsonData;
        // Timer(const Duration(seconds: 2), () {});
        return "";
      } catch (err) {
        return "";
      }
    }
    return "";
  }
}
