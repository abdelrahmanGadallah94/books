part of 'newest_books_cubit.dart';

@immutable
abstract class NewestBooksState {}

class NewestBooksInitial extends NewestBooksState {}
class NewestBooksLoading extends NewestBooksState {}
class NewestBooksSuccess extends NewestBooksState {
  final List<BooksModel> books;
  NewestBooksSuccess({required this.books});
}
class NewestBooksFail extends NewestBooksState {
  final String errorMessage;
  NewestBooksFail({required this.errorMessage});
}
