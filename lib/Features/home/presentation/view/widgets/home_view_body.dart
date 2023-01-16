import 'package:books/Features/home/presentation/view/widgets/home_view_app_bar.dart';
import 'package:books/constants.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'best_seller_list_view.dart';
import 'feature_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              HomeViewAppBar(),
              FeatureListView(),
              SizedBox(
                height: 40,
              ),
              Padding(padding: EdgeInsets.only(left: 24),child: Text(
                kBestSeller,
                style: Styles.textStyle20,
              ),),
              SizedBox(
                height: 20,
              ),
            ],

          ),
        ),
        const SliverToBoxAdapter(
          child: CustomBestSellerBooksListView(
            physics: NeverScrollableScrollPhysics(),
          ),
        )
      ],
    );

    /*
    *
    * */
  }
}
