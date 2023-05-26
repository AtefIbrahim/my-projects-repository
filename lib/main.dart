import 'dart:io';
import 'package:bookly/app_constants.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';

Future<void> main() async {
  var path = Directory.current.path;
  Hive
    ..init(path)
    ..registerAdapter(BookEntityAdapter());
  await Hive.openBox<BookEntity>(kFeaturedBox);
  await Hive.openBox<BookEntity>(kBestSellerBox);

  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme
        )
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
