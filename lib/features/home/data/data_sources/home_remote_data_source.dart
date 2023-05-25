import 'package:bookly/features/home/domain/entities/book_entity.dart';

abstract class BasicHomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchBestSellerBooks();
}

class HomeRemoteDataSource extends BasicHomeRemoteDataSource{
  @override
  Future<List<BookEntity>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<List<BookEntity>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

}
