import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListView extends StatelessWidget {
  FeaturedBooksListView({Key? key, required this.booksList}) : super(key: key);

  List<BookEntity> booksList;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 8),
              child: CustomBookImage(imageUrl: booksList[index].image ?? "",),
            );
          }),
    );
  }
}
