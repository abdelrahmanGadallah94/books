import 'package:books/core/widgets/custom_button.dart';
import 'package:books/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'custom_book_item.dart';
import 'custom_rating.dart';

class BookDetailsSection1 extends StatelessWidget {
  const BookDetailsSection1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: size.width * .2, right: size.width * .2, top: 20),
          child: const SizedBox(
            height: 260,
            child: CustomBookItem(imageUrl: ""),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        const Text(
          "The Jungle book",
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          "Rudyard Kipling",
          style: Styles.textStyle20.copyWith(
              fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 10,
        ),
        const CustomRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 20,
        ),
        const CustomButton(),
      ],
    );
  }
}
