import 'dart:io';
import 'package:bookly/app_constants.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/functions/setup_service_locator.dart';
import 'package:bookly/core/utils/simple_bloc_observer.dart';
import 'package:bookly/features/home/data/repository/home_repository_implementation.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/use_cases/fetch_best_seller_books_use_case.dart';
import 'package:bookly/features/home/domain/use_cases/fetch_featured_books_use_case.dart';
import 'package:bookly/features/home/presentation/manager/best_seller_books_cubit/best_seller_books_cubit.dart';
import 'package:bookly/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setupServiceLocator();

  final Directory appDocumentsDir = await getApplicationDocumentsDirectory();
  var path = appDocumentsDir.path;

  Hive
    ..init(path)
    ..registerAdapter(BookEntityAdapter());
  await Hive.openBox<BookEntity>(kFeaturedBox);
  await Hive.openBox<BookEntity>(kBestSellerBox);

  Bloc.observer = SimpleBlocObserver();
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            FetchFeaturedBooksUseCase(
              getIt.get<HomeRepositoryImplementation>(),
            ),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => BestSellerBooksCubit(
            FetchBestSellerBooksUseCase(
              getIt.get<HomeRepositoryImplementation>(),
            ),
          ),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
