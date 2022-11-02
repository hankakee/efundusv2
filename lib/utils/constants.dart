import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Utils {
  //colors
  static final cardsColor = Colors.grey[300]!;
  static const Color secondaryColor = Color(0XFFED8B30);
  static const Color primaryColor = Color(0XFF5D9DEB);
  static const Color variantpColor = Color(0XFF5D9DEB);
  static const Color lightColor = Color(0XFFFFFFFF);
  static const Color blackColor = Color(0XFF000000);
  //13
  static String fTitle(String textDesc, int length) {
    return textDesc.substring(0, length) + "...";
  }

  //60
  static String fDescription(String textDesc, int length) {
    return textDesc.substring(0, length) + "...";
  }

  static void kprint(param) {
    if (kDebugMode) {
      print(param);
    }
  }
}
