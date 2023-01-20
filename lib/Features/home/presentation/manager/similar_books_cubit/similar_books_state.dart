part of 'similar_books_cubit.dart';

@immutable
abstract class SimilarBooksState {}

class SimilarBooksInitial extends SimilarBooksState {}

class SimilarBooksLoading extends SimilarBooksState {}

class SimilarBooksSuccess extends SimilarBooksState {
  final List<BooksModel> books;

  SimilarBooksSuccess({required this.books});

}

class SimilarBooksFail extends SimilarBooksState {
  final String errorMessage;

  SimilarBooksFail({required this.errorMessage});
}
