import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home/data/data_sources/home_local_data_source.dart';
import 'package:bookly/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/repository/home_repository.dart';
import 'package:dartz/dartz.dart';

class HomeRepositoryImplementation extends HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;
  HomeRepositoryImplementation(
      {required this.homeRemoteDataSource, required this.homeLocalDataSource});

  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks() async {
    try {
      List<BookEntity> featuredBooksList;
      featuredBooksList = homeLocalDataSource.fetchFeaturedBooks();
      if (featuredBooksList.isNotEmpty) {
        return right(featuredBooksList);
      }
      featuredBooksList = await homeRemoteDataSource.fetchFeaturedBooks();
      return right(featuredBooksList);
    } catch (e) {
      return left(Failure());
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
      return left(Failure());
    }
  }
}
