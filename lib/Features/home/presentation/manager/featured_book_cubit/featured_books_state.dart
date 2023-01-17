part of 'featured_books_cubit.dart';

@immutable
abstract class FeaturedBookState {}

class FeaturedBookInitial extends FeaturedBookState {}

class FeaturedBookLoading extends FeaturedBookState {}

class FeaturedBookSuccess extends FeaturedBookState {
  final List<BooksModel> books;
  FeaturedBookSuccess({required this.books});
}
class FeaturedBookFail extends FeaturedBookState {
  final String errorMessage;
  FeaturedBookFail({required this.errorMessage});
}
