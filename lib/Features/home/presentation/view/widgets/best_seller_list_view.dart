import 'package:flutter/material.dart';
import 'best_seller_item.dart';

class CustomBestSellerBooksListView extends StatelessWidget {
  final ScrollPhysics? physics;
  const CustomBestSellerBooksListView({Key? key,this.physics}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: ListView.builder(
        physics: physics,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemCount: 20,
        itemBuilder: (context, index) => const BestSellerItem(),


      ),
    );
  }
}
