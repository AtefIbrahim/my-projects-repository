import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/use_cases/no_param_use_case.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/repository/home_repository.dart';
import 'package:dartz/dartz.dart';

class FetchBestSellerBooksUseCase extends UseCase<List<BookEntity>> {
  final HomeRepo homeRepo;

  FetchBestSellerBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call() async {
    return await homeRepo.fetchBestSellerBooks();
  }
}
