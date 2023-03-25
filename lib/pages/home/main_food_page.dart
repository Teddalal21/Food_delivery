import 'package:flutter/material.dart';
import '../../utils/dimensions.dart';
import '../../widgets/big_text.dart';
import '../../widgets/small_text.dart';
import '../../utils/colors.dart';
import 'food_page_body.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    // to know the current device height
    //print('Current height is:' + MediaQuery.of(context).size.height.toString());
    return Scaffold(
      body: Column(
        children: [
          // showing the header
          Container(
            // height: 50,
            child: Container(
              margin: EdgeInsets.only(
                  top: Dimensions.height45, bottom: Dimensions.height15),
              padding: EdgeInsets.only(
                  left: Dimensions.width20, right: Dimensions.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(text: "Ethiopia", color: AppColors.mainColor),
                      Row(
                        children: [
                          SmallText(text: "Addis Ababa", color: Colors.black54),
                          const Icon(Icons.arrow_drop_down_rounded)
                        ],
                      )
                    ],
                  ),
                  Center(
                    child: Container(
                      width: Dimensions.height45,
                      height: Dimensions.height45,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius15),
                        color: AppColors.mainColor,
                      ),
                      child: Icon(Icons.search,
                          color: Colors.white, size: Dimensions.iconSize24),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //showing the body
          const Expanded(
              child: SingleChildScrollView(
            child: FoodPageBody(),
          )),
        ],
      ),
    );
  }
}
