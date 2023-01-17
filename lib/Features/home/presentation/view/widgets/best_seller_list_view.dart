import 'package:books/Features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:books/core/widgets/custom_circular_progress_indicator.dart';
import 'package:books/core/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'best_seller_item.dart';

class CustomBestSellerBooksListView extends StatelessWidget {
  final ScrollPhysics? physics;
  const CustomBestSellerBooksListView({Key? key,this.physics}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit,NewestBooksState>(
      builder: (context, state) {
        if(state is NewestBooksSuccess){
          return Padding(
            padding: const EdgeInsets.only(left: 24),
            child: ListView.builder(
              physics: physics,
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              itemBuilder: (context, index) => const BestSellerItem(),


            ),
          );
        }else if(state is NewestBooksFail){
          return CustomErrorWidget(errorMessage: state.errorMessage);
        }else{
          return const CustomCircularProgressIndicator();
        }
      },
    );
  }
}
