import 'package:books/Features/home/data/models/books_model/BooksModel.dart';
import 'package:books/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{
  Future<Either<Failure,List<BooksModel>>> fetchFeaturedBooks();
  Future<Either<Failure,List<BooksModel>>> fetchNewestBooks();
}