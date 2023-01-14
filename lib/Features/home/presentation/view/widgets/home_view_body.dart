import 'package:books/constants.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'feature_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: kHomeBody,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            FeatureListView(),
            SizedBox(height: 40,),
            Text(kBestSeller,style: Styles.titleBold,),
          ],
        ));
  }
}
