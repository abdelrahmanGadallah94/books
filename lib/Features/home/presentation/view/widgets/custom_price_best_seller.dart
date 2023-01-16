import 'package:books/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'custom_rating.dart';

class CustomPriceBestSeller extends StatelessWidget {
  const CustomPriceBestSeller({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("19.99\$",style: Styles.textStyle20.copyWith(
            fontWeight: FontWeight.bold
        ),),
        const CustomRating()
      ],
    );
  }
}
