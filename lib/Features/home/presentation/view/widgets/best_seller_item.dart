import 'package:books/Features/home/data/models/books_model/book_model.dart';
import 'package:books/constants.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'best_seller_details.dart';

class NewestBooksItem extends StatelessWidget {
  final BooksModel booksModel;
  const NewestBooksItem({Key? key, required this.booksModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: const EdgeInsets.only(bottom: 15),
      child: GestureDetector(
        onTap: (){
          GoRouter.of(context).push(kBookDetailsPageRoute,extra: booksModel);
        },
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.7 / 4,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: CachedNetworkImage(
                  fit: BoxFit.cover,
                  imageUrl: booksModel.volumeInfo.imageLinks?.thumbnail ?? '',
                ),
              ),
            ),
            const SizedBox(width: 15,),
            BestSellerDetails(books: booksModel)
          ],
        ),
      ),
    );
  }
}



