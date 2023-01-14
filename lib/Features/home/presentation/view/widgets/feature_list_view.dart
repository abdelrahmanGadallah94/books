import 'package:flutter/material.dart';
import 'featured_item.dart';

class FeatureListView extends StatelessWidget {
  const FeatureListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 245,
      margin: const EdgeInsets.only(top: 20),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder:(context, index) =>  const FeaturedItem(),
      ),
    );
  }
}