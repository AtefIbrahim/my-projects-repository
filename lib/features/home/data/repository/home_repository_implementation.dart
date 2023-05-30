import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home/data/data_sources/home_local_data_source.dart';
import 'package:bookly/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/repository/home_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepositoryImplementation extends HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;
  HomeRepositoryImplementation(
      {required this.homeRemoteDataSource, required this.homeLocalDataSource});

  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks({int pageNumber = 0}) async {
    try {
      List<BookEntity> featuredBooksList;
      featuredBooksList = homeLocalDataSource.fetchFeaturedBooks(
          pageNumber: pageNumber
      );
      if (featuredBooksList.isNotEmpty) {
        return right(featuredBooksList);
      }
      featuredBooksList = await homeRemoteDataSource.fetchFeaturedBooks(
          pageNumber: pageNumber
      );
      return right(featuredBooksList);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchBestSellerBooks() async {
    try {
      List<BookEntity> bestSellerBooksList;
      bestSellerBooksList = homeLocalDataSource.fetchBestSellerBooks();
      if (bestSellerBooksList.isNotEmpty) {
        return right(bestSellerBooksList);
      }
      bestSellerBooksList = await homeRemoteDataSource.fetchBestSellerBooks();
      return right(bestSellerBooksList);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
