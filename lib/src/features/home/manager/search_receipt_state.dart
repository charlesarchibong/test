import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:interview_test_app/src/features/home/model/receipt.dart';

part 'search_receipt_state.freezed.dart';

@freezed
class SearchReceiptState with _$SearchReceiptState {
  const factory SearchReceiptState.loading({
     List<Receipt>? results,
  }) = LoadingSearchReceiptState;

  const factory SearchReceiptState.loaded({
    required List<Receipt> results,
  }) = LoadedSearchReceiptState;

  const factory SearchReceiptState.initial({
     List<Receipt>? results,
  }) = InitialSearchReceiptState;

  const SearchReceiptState._();
}
