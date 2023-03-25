import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/widgets/small_text.dart';

import '../utils/colors.dart';
import '../utils/dimensions.dart';
import 'big_text.dart';
import 'icon_and_text_widget.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text, size: Dimensions.font26),
        SizedBox(
          height: Dimensions.height10,
        ),
        // comments section
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Wrap(
              children: List.generate(
                5,
                (index) =>
                    Icon(Icons.star, color: AppColors.mainColor, size: 15),
              ),
            ),
            const SizedBox(width: 10),
            SmallText(text: "4.5"),
            const SizedBox(width: 10),
            SmallText(text: "1287"),
            const SizedBox(width: 10),
            SmallText(text: "comments"),
          ],
        ),
        SizedBox(height: Dimensions.height20),
        // time and distance
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(
              icon: Icons.circle_sharp,
              iconColor: AppColors.iconColor1,
              text: "Normal",
            ),
            IconAndTextWidget(
              icon: Icons.location_on,
              iconColor: AppColors.mainColor,
              text: "1.7km",
            ),
            IconAndTextWidget(
              icon: Icons.access_time_rounded,
              iconColor: AppColors.iconColor2,
              text: "32min",
            )
          ],
        ),
      ],
    );
  }
}
