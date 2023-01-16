import 'package:flutter/material.dart';

import 'custom_book_item.dart';

class CustomBookDetailsListView extends StatelessWidget {
  const CustomBookDetailsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 6,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return const CustomBookItem();
      },
    );
  }
}