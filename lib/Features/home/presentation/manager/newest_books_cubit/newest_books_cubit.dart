import 'package:bloc/bloc.dart';
import 'package:books/Features/home/data/models/books_model/BooksModel.dart';
import 'package:books/Features/home/data/repos/home_repo.dart';
import 'package:books/core/errors/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchNewestBooks()async{

    emit(NewestBooksLoading());
    Either<Failure, List<BooksModel>> data = await homeRepo.fetchNewestBooks();

    data.fold((failure) {
      emit(NewestBooksFail(errorMessage: failure.errorMessage));
    }, (books) {
      emit(NewestBooksSuccess(books: books));
    });
  }
}
