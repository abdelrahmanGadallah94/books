import 'package:books/Features/home/presentation/manager/featured_book_cubit/featured_books_cubit.dart';
import 'package:books/core/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../constants.dart';
import 'custom_book_item.dart';
import 'package:shimmer/shimmer.dart';

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
            height: 240,
            margin: const EdgeInsets.only(top: 20),
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder:(context, index) {
                return GestureDetector(
                  onTap: (){
                    GoRouter.of(context).push(kBookDetailsPageRoute,extra: state.books[index]);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: CustomBookItem(imageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail ?? ''),
                  ),
                );
              },
            ),
          );
        }
        else if(state is FeaturedBookFail){
         return CustomErrorWidget(errorMessage: state.errorMessage,);
        }
        else if(state is FeaturedBookLoading){
          return Shimmer.fromColors(
              baseColor: Colors.red,
              highlightColor: Colors.yellow,
              child: Container(
                height: 240,
                margin: const EdgeInsets.only(top: 20),
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder:(context, index) {
                    return const Padding(
                      padding: EdgeInsets.only(right: 5),
                      child: CustomBookItem(imageUrl: "http://books.google.com/books/content?id=u13hVoYVZa8C&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"),
                    );
                  },
                ),
              )
          );
        }
        return Container();
      },
    );
  }
}