import 'package:freezed_annotation/freezed_annotation.dart';

part 'receipt.freezed.dart';

@freezed
class Receipt with _$Receipt {
  const factory Receipt({
    required String productName,
    required String receiptNumber,
    required String leavingLocation,
    required String arrivalLocation,
  }) = _Receipt;
}
