part of 'best_seller_books_cubit.dart';

@immutable
abstract class BestSellerBooksState {}

class BestSellerBooksInitial extends BestSellerBooksState {}

class BestSellerBooksLoading extends BestSellerBooksState {}

class BestSellerBooksFailure extends BestSellerBooksState {
  final String errorMessage;
  BestSellerBooksFailure(this.errorMessage);
}

class BestSellerBooksSuccess extends BestSellerBooksState {
  final List<BookEntity> bestSellerBooksList;
  BestSellerBooksSuccess(this.bestSellerBooksList);
}
