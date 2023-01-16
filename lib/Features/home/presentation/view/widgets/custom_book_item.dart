import 'package:books/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7/4,
      child: Container(
        margin: const EdgeInsets.only(right: 8),
        decoration:  BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(16),
          image: const DecorationImage(
            fit: BoxFit.cover,
              image: AssetImage(AppAssets.featureImage),
          )
        ),
      ),
    );
  }
}
