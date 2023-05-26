import 'package:bookly/app_constants.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

abstract class BasicHomeLocalDataSource {
  List<BookEntity> fetchFeaturedBooks();
  List<BookEntity> fetchBestSellerBooks();
}

class HomeLocalDataSource extends BasicHomeLocalDataSource {
  @override
  List<BookEntity> fetchFeaturedBooks() {
    var box = Hive.box<BookEntity>(kFeaturedBox);
    return box.values.toList();
  }

  @override
  List<BookEntity> fetchBestSellerBooks() {
    var box = Hive.box<BookEntity>(kBestSellerBox);
    return box.values.toList();
  }
}
