import 'package:fooddelivery/data/api/api_client.dart';
import 'package:fooddelivery/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controllers/popular_product_controller.dart';

Future<void> init() async {
  // api client
  Get.lazyPut(() => ApiClient(appBaseUrl: "https://www.teddalal1.com"));
  // repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  // controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
