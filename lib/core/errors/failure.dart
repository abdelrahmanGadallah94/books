import 'package:dio/dio.dart';

abstract class Failure{
  final String errorMessage;

  Failure(this.errorMessage);
}
 class ServiceFailure extends Failure{
  ServiceFailure(super.errorMessage);

  factory ServiceFailure.fromDioError(DioError dioError){

    switch(dioError.type){
      
      case DioErrorType.connectTimeout:
        return ServiceFailure("Server connection time out.please try later ");
      case DioErrorType.sendTimeout:
        return ServiceFailure("Send connection time out.please try later");
      case DioErrorType.receiveTimeout:
        return ServiceFailure("Receive connection time out.please try later");
      case DioErrorType.response:
        return ServiceFailure.fromDioResponse(dioError.response!.statusCode!, dioError.response!.data!);
      case DioErrorType.cancel:
        return ServiceFailure("connection canceled.please try again!");
      case DioErrorType.other:
        if(dioError.message.contains("SocketException")){
          return ServiceFailure("No internet connection");
        }
        return ServiceFailure("Unexpected error please try later.please try again!");
      default:
        return ServiceFailure("Ops. Something is wrong.please try again");
    }
  }
  
  factory ServiceFailure.fromDioResponse(int statusCode, dynamic response){
    
    if(statusCode == 400 || statusCode == 401 || statusCode == 403){
      return ServiceFailure(response["error"]["message"]);
    }else if(statusCode == 404){
      return ServiceFailure("Your request not found. please try again later");
    }else if(statusCode == 500){
      return ServiceFailure("Internal server error.please try again");
    }else{
      return ServiceFailure("Ops. Something is wrong.please try again");
    }

  }
}