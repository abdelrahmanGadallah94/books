import 'package:books/constants.dart';
import 'package:flutter/material.dart';

import 'featured_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: kHomeBody,
      margin: const EdgeInsets.only(top: 20),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder:(context, index) => const FeaturedItem(),
      ),
    );
  }
}
