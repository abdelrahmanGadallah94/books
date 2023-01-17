import 'package:books/Features/home/presentation/manager/featured_book_cubit/featured_books_cubit.dart';
import 'package:books/core/widgets/custom_circular_progress_indicator.dart';
import 'package:books/core/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'custom_book_item.dart';

class FeatureListView extends StatelessWidget {
  const FeatureListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<FeaturedBookCubit>(context).fetchFeaturedBooks();
    return BlocBuilder<FeaturedBookCubit,FeaturedBookState>(
      builder: (context, state) {
        if(state is FeaturedBookSuccess){
          return Container(
            height: 245,
            margin: const EdgeInsets.only(top: 20),
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder:(context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: CustomBookItem(imageUrl: state.books[index].volumeInfo.imageLinks.thumbnail),
                );
              },
            ),
          );
        }else if(state is FeaturedBookFail){
         return CustomErrorWidget(errorMessage: state.errorMessage,);
        }else{
          return const CustomCircularProgressIndicator();
        }
      },
    );
  }
}