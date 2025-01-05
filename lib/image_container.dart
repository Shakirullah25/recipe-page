import 'package:flutter/material.dart';
import 'package:recipe_page/colors.dart';

SizedBox imageContainer(BuildContext context) {
  return SizedBox(
    child: LayoutBuilder(
      builder: (context, constraints) {
        return Align(
          alignment: Alignment.topCenter,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              constraints: BoxConstraints(
                maxWidth: constraints.maxWidth * 0.99,
                maxHeight: constraints.maxHeight * 0.7,
              ),
              decoration: BoxDecoration(
                color: AppColors.stone100,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image(
                image: const AssetImage("lib/asset/image/image-omelette.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
    ),
  );
}
