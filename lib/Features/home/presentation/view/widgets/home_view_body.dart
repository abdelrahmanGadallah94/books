import 'package:books/constants.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'best_seller_list_view.dart';
import 'feature_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const FeatureListView(),
        const SizedBox(
          height: 40,
        ),
        Padding(
            padding: kHomeBody,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  kBestSeller,
                  style: Styles.textStyle20,
                ),
                SizedBox(
                  height: 20,
                ),
                BestSellerListView(),
              ],
            ))
      ],
    );
  }
}
