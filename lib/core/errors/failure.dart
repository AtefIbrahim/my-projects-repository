import 'package:dio/dio.dart';

class Failure {
  final String message;

  Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(String message) : super(message);

  factory ServerFailure.fromDioError(DioError e) {
    switch (e.type) {
      case DioErrorType.connectionTimeout:
        return ServerFailure("Connection is timeout with api server");
      case DioErrorType.sendTimeout:
        return ServerFailure("Send timeout with api server");
      case DioErrorType.receiveTimeout:
        return ServerFailure("Receive timeout with api server");
      case DioErrorType.badCertificate:
        return ServerFailure("bad certificate with api server");
      case DioErrorType.badResponse:
        return ServerFailure.fromResponse(
            e.response!.statusCode!, e.response!.data);
      case DioErrorType.cancel:
        return ServerFailure("Request to api server is canceled");
      case DioErrorType.connectionError:
        return ServerFailure("No internet connection");
      case DioErrorType.unknown:
        return ServerFailure("Oops, there was an error, Please try again");
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 404) {
      return ServerFailure("Your request is not found, Please try later");
    } else if (statusCode == 500) {
      return ServerFailure("There is a problem with server, Please try later");
    } else if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure("${response["error"]["message"]}");
    } else {
      return ServerFailure("There was an error, Please try again");
    }
  }
}
