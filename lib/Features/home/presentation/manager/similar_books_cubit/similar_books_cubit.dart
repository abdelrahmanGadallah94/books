import 'package:bloc/bloc.dart';
import 'package:books/Features/home/data/models/books_model/book_model.dart';
import 'package:books/Features/home/data/repos/home_repo.dart';
import 'package:flutter/cupertino.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.repo) : super(SimilarBooksInitial());
  
  final HomeRepo repo;
  
  Future<void> fetchSimilarBooks({required String category}) async{
    emit(SimilarBooksLoading());
    
    var data = await repo.fetchSimilarBooks(category: category);

    data.fold((failure){
      emit(SimilarBooksFail(errorMessage: failure.errorMessage));
    } , (books) {
      emit(SimilarBooksSuccess(books: books));
    });
  }
}
