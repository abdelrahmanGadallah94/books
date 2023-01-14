import 'package:books/constants.dart';
import 'package:books/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'custom_price_best_seller.dart';


class BestSellerDetails extends StatelessWidget {
  const BestSellerDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Harry Potter and the Goblet of Fire",
                style: Styles.textStyle22.copyWith(fontFamily: kGtSectraFine)),
            const SizedBox(height: 3),
            const Text("Jk Rowling"),
            const SizedBox(height: 4,),
            const CustomPriceBestSeller()
          ],
        ));
  }
}