import 'package:efundusv2/utils/constants.dart';
import 'package:flutter/services.dart';

class Course {
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
}
