import 'package:get/get.dart';

class SizeConfig {
  SizeConfig._();
  static double screenWidth = Get.width;
  static double screenHeight = Get.height;
  static double blockSizeHorizontal = screenWidth / 100;
  static double blockSizeVertical = screenHeight / 100;
  static double textScaleFactor = Get.textScaleFactor;
}
