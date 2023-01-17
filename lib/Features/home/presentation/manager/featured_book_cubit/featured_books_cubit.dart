import 'package:bloc/bloc.dart';
import 'package:books/Features/home/data/repos/home_repo.dart';
import 'package:books/core/errors/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import '../../../data/models/books_model/book_model.dart';
part 'featured_books_state.dart';

class FeaturedBookCubit extends Cubit<FeaturedBookState> {
  FeaturedBookCubit(this.homeRepo) : super(FeaturedBookInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks()async{
    emit(FeaturedBookLoading());
    Either<Failure, List<BooksModel>> data = await homeRepo.fetchFeaturedBooks();
    data.fold((failure) {
      emit(FeaturedBookFail(errorMessage: failure.errorMessage));
    }, (books){
      emit(FeaturedBookSuccess(books: books));
    });
  }
}
