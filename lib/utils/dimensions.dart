import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  static double pageView = screenHeight / 1.93;
  static double pageViewContainer = screenHeight / 2.81;
  static double pageViewTextContainer = screenHeight / 5.16;

// dynamic height padding and margin
  static double height10 = screenHeight / 62;
  static double height15 = screenHeight / 41.33;
  static double height20 = screenHeight / 31;
  static double height5 = screenHeight / 124;
  static double height45 = screenHeight / 13.77;
  static double height30 = screenHeight / 20.66;

// dynamic width padding and margin
  static double width10 = screenHeight / 62;
  static double width15 = screenHeight / 41.33;
  static double width20 = screenHeight / 31;
  static double width30 = screenHeight / 20.66;

// for font size
  static double font20 = screenHeight / 31;
  static double font16 = screenHeight / 38.75;
  static double font26 = screenHeight / 23.84;

  // radius
  static double radius20 = screenHeight / 31;
  static double radius30 = screenHeight / 20.66;
  static double radius15 = screenHeight / 41.33;

  // Icon Size
  static double iconSize24 = screenHeight / 25.83;
  static double iconSize16 = screenHeight / 38.75;

  // list view size
  static double listViewImageSize = screenHeight / 5.16;
  static double listViewTextContSize = screenHeight / 6.2;

// for Popular Food
  static double popularFoodImgSize = screenHeight / 1.77;

  // for Bottom height
static double bottomHeightBar = screenHeight / 5.16;

}
