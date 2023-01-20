import 'package:books/Features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:books/core/widgets/custom_circular_progress_indicator.dart';
import 'package:books/core/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'best_seller_item.dart';

class CustomNewestBooksListView extends StatelessWidget {
  final ScrollPhysics? physics;
  const CustomNewestBooksListView({Key? key, this.physics})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return Padding(
            padding: const EdgeInsets.only(left: 24, right: 20),
            child: ListView.builder(
              physics: physics,
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              itemBuilder: (context, index) =>
                  NewestBooksItem(booksModel: state.books[index]),
            ),
          );
        }
        else if (state is NewestBooksFail) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        }
        else if(state is NewestBooksLoading) {
          return const CustomCircularProgressIndicator();
          // BooksModel ?booksModel;
          // return Shimmer.fromColors(
          //     baseColor: Colors.red,
          //     highlightColor: Colors.yellow,
          //     child: Container(
          //       height: 240,
          //       margin: const EdgeInsets.only(top: 20),
          //       child: ListView.builder(
          //         physics: const BouncingScrollPhysics(),
          //         itemCount: 10,
          //         scrollDirection: Axis.horizontal,
          //         itemBuilder: (context, index) {
          //           return  Padding(
          //             padding: const EdgeInsets.only(left: 24, right: 20),
          //             child: ListView.builder(
          //               physics: physics,
          //               shrinkWrap: true,
          //               padding: EdgeInsets.zero,
          //               itemCount: 10,
          //               itemBuilder: (context, index) =>
          //                    Text("Test"),
          //             ),
          //           );
          //         },
          //       ),
          //     ));
        }else{
          return Container();
        }
      },
    );
  }
}
