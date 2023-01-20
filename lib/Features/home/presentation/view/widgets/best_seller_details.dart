import 'package:books/Features/home/data/models/books_model/book_model.dart';
import 'package:books/Features/home/data/models/books_model/volume_info.dart';
import 'package:books/constants.dart';
import 'package:books/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'custom_price_best_seller.dart';


class BestSellerDetails extends StatelessWidget {
  final BooksModel books;
  const BestSellerDetails({
    required this.books,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VolumeInfo booksData = books.volumeInfo;
    return Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                booksData.title!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Styles.textStyle20.copyWith(fontFamily: kGtSectraFine)),
            const SizedBox(height: 3),
             Text(booksData.authors!.first),
            const SizedBox(height: 4,),
             CustomPriceBestSeller(booksData: booksData,)
          ],
        ));
  }
}