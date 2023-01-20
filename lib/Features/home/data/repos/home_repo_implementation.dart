import 'package:books/Features/home/data/repos/home_repo.dart';
import 'package:books/core/errors/failure.dart';
import 'package:books/core/utils/api_services.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../models/books_model/book_model.dart';

class HomeRepoImplementation implements HomeRepo {
  final ApiService api;

  HomeRepoImplementation(this.api);
  @override
  Future<Either<Failure, List<BooksModel>>> fetchNewestBooks() async {
    try {
      Map<String, dynamic> data = await api.getService(
          endPoint:
              "/volumes?Filtering=free-ebooks&Sorting=newest&q=computer science");

      List<BooksModel> books = [];

      for (var item in data["items"]) {
        try {
          books.add(BooksModel.fromJson(item));
        } catch (e) {
          books.add(BooksModel.fromJson(item));
        }
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServiceFailure.fromDioError(e));
      }
      return left(ServiceFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BooksModel>>> fetchFeaturedBooks() async {
    try {
      Map<String, dynamic> data = await api.getService(
          endPoint: "/volumes?Filtering=free-ebooks&q=programming");

      List<BooksModel> books = [];

      for (var item in data["items"]) {
        books.add(BooksModel.fromJson(item));
      }

      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServiceFailure.fromDioError(e));
      }
      return left(ServiceFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BooksModel>>> fetchSimilarBooks(
      {required String category}) async {
    try {
      Map<String, dynamic> data = await api.getService(
          endPoint:
              "/volumes?Filtering=free-ebooks&q=computer science&Sorting=relevance");

      List<BooksModel> books = [];

      for (var item in data["items"]) {
        books.add(BooksModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServiceFailure.fromDioError(e));
      }
      return left(ServiceFailure(e.toString()));
    }
  }
}
