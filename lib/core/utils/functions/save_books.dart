import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

void saveBooksLocally(List<BookEntity> booksList, String boxName) {
  var box = Hive.box<BookEntity>(boxName);
  box.addAll(booksList);
}