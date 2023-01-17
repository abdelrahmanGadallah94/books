import 'package:books/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

import '../models/books_model/book_model.dart';


abstract class HomeRepo{
  Future<Either<Failure,List<BooksModel>>> fetchFeaturedBooks();
  Future<Either<Failure,List<BooksModel>>> fetchNewestBooks();
}