import 'package:books/core/widgets/custom_button.dart';
import 'package:books/core/utils/styles.dart';
import 'package:flutter/material.dart';
import '../../../data/models/books_model/book_model.dart';
import 'custom_book_item.dart';
import 'custom_rating.dart';

class BookDetailsSection1 extends StatelessWidget {
  final BooksModel booksModel;
  const BookDetailsSection1({Key? key,required this.booksModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: size.width * .2, right: size.width * .2, top: 20),
          child:  SizedBox(
            height: 260,
            child: CustomBookItem(
                imageUrl: booksModel.volumeInfo.imageLinks?.thumbnail ?? ''
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
         Text(
          booksModel.volumeInfo.title ?? '',
          style: Styles.textStyle30,
           textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          booksModel.volumeInfo.authors?[0] ?? '',
          style: Styles.textStyle20.copyWith(
              fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 10,
        ),
        const CustomRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 20,
        ),
        const CustomButton(),
      ],
    );
  }
}
