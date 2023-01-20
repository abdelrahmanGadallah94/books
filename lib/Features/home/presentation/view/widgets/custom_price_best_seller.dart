import 'package:books/Features/home/data/models/books_model/volume_info.dart';
import 'package:books/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'custom_rating.dart';

class CustomPriceBestSeller extends StatelessWidget {
  final VolumeInfo? booksData;
  const CustomPriceBestSeller({
    required this.booksData,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Free",style: Styles.textStyle20.copyWith(
            fontWeight: FontWeight.bold
        ),),
         CustomRating(booksData: booksData,)
      ],
    );
  }
}
