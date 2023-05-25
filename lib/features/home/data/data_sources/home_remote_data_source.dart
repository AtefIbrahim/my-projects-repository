import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';

abstract class BasicHomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchBestSellerBooks();
}

class HomeRemoteDataSource extends BasicHomeRemoteDataSource {
  final ApiService apiService;
  HomeRemoteDataSource(this.apiService);

  @override
  Future<List<BookEntity>> fetchBestSellerBooks() async {
    var data = await apiService.get(
        endPoint: "volumes?Filtering=free-ebooks&q=pogramming");

    return parseBooksList(data);
  }

  List<BookEntity> parseBooksList(Map<String, dynamic> data) {
    List<BookEntity> booksList = [];
    for (var bookMap in data["items"]) {
      booksList.add(BookModel.fromJson(bookMap));
    }
    return booksList;
  }

  @override
  Future<List<BookEntity>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

}
