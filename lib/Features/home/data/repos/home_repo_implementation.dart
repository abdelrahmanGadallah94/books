import 'package:books/Features/home/data/models/books_model/BooksModel.dart';
import 'package:books/Features/home/data/repos/home_repo.dart';
import 'package:books/core/errors/failure.dart';
import 'package:books/core/utils/api_services.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeService implements HomeRepo {
  final ApiService api;

  HomeService(this.api);
  @override
  Future<Either<Failure, List<BooksModel>>> fetchNewestBooks() async {

    try{
      Map<String, dynamic> data = await api.getService(
          endPoint:
          "/volumes?Filtering=free-ebooks&q=subject:programming&sorting=newest");

      List<BooksModel> books = [];

      for(var item in data["items"]){
        books.add(BooksModel.fromJson(item));
      }
      return right(books);
    }catch (e){
      if(e is DioError){
        return left(ServiceFailure.fromDioError(e));
      }
      return left(ServiceFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BooksModel>>> fetchFeaturedBooks() async{

    try{
      Map<String, dynamic> data = await api.getService(
          endPoint:
          "/volumes?Filtering=free-ebooks&q=subject:programming");

      List<BooksModel> books = [];

      for(var item in data["items"]){
        books.add(BooksModel.fromJson(item));
      }
      return right(books);
    }catch (e){
      if(e is DioError){
        return left(ServiceFailure.fromDioError(e));
      }
      return left(ServiceFailure(e.toString()));
    }
  }
}
