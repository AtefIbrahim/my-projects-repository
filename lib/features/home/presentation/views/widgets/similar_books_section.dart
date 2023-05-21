import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: Text(
            "You can also like",
            style: Styles.titleStyle14.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: SimilarBooksListView(),
        ),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }
}