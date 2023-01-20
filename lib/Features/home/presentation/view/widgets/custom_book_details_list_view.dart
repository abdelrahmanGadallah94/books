import 'package:books/Features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:books/core/widgets/custom_circular_progress_indicator.dart';
import 'package:books/core/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_book_item.dart';

class CustomBookDetailsListView extends StatelessWidget {
  const CustomBookDetailsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
              height: size.height * .16,
              child: ListView.builder(
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return  Padding(
                    padding: const EdgeInsets.only(right: 7),
                    child: CustomBookItem(
                      imageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail ?? ''
                    ),
                  );
                },
              ));
        } else if (state is SimilarBooksFail) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomCircularProgressIndicator();
        }
      },
    );
  }
}
