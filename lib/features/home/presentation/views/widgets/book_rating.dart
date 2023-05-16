import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 15,
        ),
        const SizedBox(
          width: 6,
        ),
        const Text(
          "4.8",
          style: Styles.titleStyle16,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          "(2390)",
          style: Styles.titleStyle14.copyWith(
              color: const Color(0xff707070), fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
