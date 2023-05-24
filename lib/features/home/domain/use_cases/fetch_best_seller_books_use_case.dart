import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/repository/home_repository.dart';
import 'package:dartz/dartz.dart';

class FetchBestSellerBooksUseCase
{
  final HomeRepo homeRepo;

  FetchBestSellerBooksUseCase(this.homeRepo);

  Future<Either<Failure, List<BookEntity>>> fetchBestSellerBooks()
  {
    return homeRepo.fetchBestSellerBooks();
  }
}
