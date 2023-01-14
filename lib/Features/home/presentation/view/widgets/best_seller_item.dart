import 'package:books/constants.dart';
import 'package:books/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'best_seller_details.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: GestureDetector(
        onTap: (){
          GoRouter.of(context).push(kBookDetailsPageRoute);
        },
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.7 / 4,
              child: Container(
                margin: const EdgeInsets.only(right: 8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(AppAssets.featureImage),
                    )),
              ),
            ),
            const SizedBox(width: 15,),
            const BestSellerDetails()
          ],
        ),
      ),
    );
  }
}



