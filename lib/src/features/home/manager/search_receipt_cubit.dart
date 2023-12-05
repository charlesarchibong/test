import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interview_test_app/src/features/home/manager/search_receipt_state.dart';
import 'package:interview_test_app/src/features/home/model/receipt.dart';

class SearchReceiptCubit extends Cubit<SearchReceiptState> {


  SearchReceiptCubit({
    SearchReceiptState? initialState,

  }) : super(initialState ?? const SearchReceiptState.initial()){
    if(initialState == null){
      emit(SearchReceiptState.loaded(results: receiptNumbers));
    }
  }

  List<Receipt> receiptNumbers = const [
    Receipt(
      productName: 'Macbook pro M2',
      receiptNumber: '#NE4385734085',
      leavingLocation: 'Paris',
      arrivalLocation: 'Morocco',
    ),
    Receipt(
      productName: 'Summer Linen Jacket',
      receiptNumber: '#NE1234567890',
      leavingLocation: 'Barcelona',
      arrivalLocation: 'Paris',
    ),
    Receipt(
      productName: 'Tapered-fit jeans AW',
      receiptNumber: '#NE2345678901',
      leavingLocation: 'Colombia',
      arrivalLocation: 'Morocco',
    ),
    Receipt(
      productName: 'Slim fit jeans AW',
      receiptNumber: '#NE3456789012',
      leavingLocation: 'Bogota',
      arrivalLocation: 'Dhaka',
    ),
    Receipt(
      productName: 'Office Setup Desk',
      receiptNumber: '#NE4567890123',
      leavingLocation: 'France',
      arrivalLocation: 'German',
    ),
  ];

  void searchReceipt(String receiptId) {
    emit(SearchReceiptState.loading(results: state.results));
    final results = receiptNumbers.where((element) => element.receiptNumber.contains(receiptId)).toList();
    emit(SearchReceiptState.loaded(results: results));
  }
}