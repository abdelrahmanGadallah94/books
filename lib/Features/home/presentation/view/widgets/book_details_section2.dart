import 'package:books/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'custom_book_details_list_view.dart';

class BookDetailsSection2 extends StatelessWidget {
  const BookDetailsSection2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [
        Text(
          "You can also like",
          style: Styles.textStyle16,
        ),
        SizedBox(
          height: 10,
        ),
        CustomBookDetailsListView(),
      ]),
    );
  }
}
