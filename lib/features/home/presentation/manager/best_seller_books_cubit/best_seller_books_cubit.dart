import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/use_cases/fetch_best_seller_books_use_case.dart';
import 'package:meta/meta.dart';

part 'best_seller_books_state.dart';

class BestSellerBooksCubit extends Cubit<BestSellerBooksState> {
  BestSellerBooksCubit(this.fetchBestSellerBooksUseCase)
      : super(BestSellerBooksInitial());
  final FetchBestSellerBooksUseCase fetchBestSellerBooksUseCase;

  Future<void> fetchBestSellerBooks() async {
    emit(BestSellerBooksLoading());
    var result = await fetchBestSellerBooksUseCase.call();
    result.fold((failure) => emit(BestSellerBooksFailure(failure.message)),
        (booksList) => emit(BestSellerBooksSuccess(booksList)));
  }
}
