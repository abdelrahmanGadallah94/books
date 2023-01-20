import 'package:books/Features/home/data/models/books_model/book_model.dart';
import 'package:books/Features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'widgets/book_details_view_body.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({Key? key,required this.booksModel}) : super(key: key);
  final BooksModel booksModel;
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {

  @override
  void initState() {
      BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(category: widget.booksModel.volumeInfo.categories![0]);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: IconButton(onPressed: (){
          GoRouter.of(context).pop();
        }, icon: const Icon(Icons.close)),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart_outlined)),
        ],
      ),
      body:   BookDetailsViewBody(booksModel: widget.booksModel,),

    );
  }
}

