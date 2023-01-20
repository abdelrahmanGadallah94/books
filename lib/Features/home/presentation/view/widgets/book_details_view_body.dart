import 'package:flutter/material.dart';
import '../../../data/models/books_model/book_model.dart';
import 'book_details_section2.dart';
import 'book_details_view_section1.dart';

class BookDetailsViewBody extends StatelessWidget {
  final BooksModel booksModel;
  const BookDetailsViewBody({super.key,required this.booksModel});
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child:
          Padding(
            padding: const EdgeInsets.only( bottom: 30),
            child: Column(
              children:  [
                BookDetailsSection1(booksModel: booksModel,),
                const Expanded(child: SizedBox(height: 30,)),
                const BookDetailsSection2(),
                // Expanded(child: SizedBox(height: 30,)),
              ],
            ),
          ),



        ),
      ],
    );
  }
}
