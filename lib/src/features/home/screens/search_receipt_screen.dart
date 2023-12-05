import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:interview_test_app/src/features/home/widgets/receipt_number_widget.dart';
import 'package:interview_test_app/src/features/home/widgets/search_receipt_appbar.dart';

class SearchReceiptScreen extends StatefulWidget {
  const SearchReceiptScreen({Key? key}) : super(key: key);

  @override
  State<SearchReceiptScreen> createState() => _SearchReceiptScreenState();
}

class _SearchReceiptScreenState extends State<SearchReceiptScreen> {
  List<ReceiptNumberClass> receiptNumbers = const [
    ReceiptNumberClass(
      productName: 'Macbook pro M2',
      receiptNumber: '#NE4385734085',
      leavingLocation: 'Paris',
      arrivalLocation: 'Morocco',
    ),
    ReceiptNumberClass(
      productName: 'Summer Linen Jacket',
      receiptNumber: '#NE4385734085',
      leavingLocation: 'Barcelona',
      arrivalLocation: 'Paris',
    ),
    ReceiptNumberClass(
      productName: 'Tapered-fit jeans AW',
      receiptNumber: '#NE4385734085',
      leavingLocation: 'Colombia',
      arrivalLocation: 'Morocco',
    ),
    ReceiptNumberClass(
      productName: 'Slim fit jeans AW',
      receiptNumber: '#NE4385734085',
      leavingLocation: 'Bogota',
      arrivalLocation: 'Dhaka',
    ),
    ReceiptNumberClass(
      productName: 'Office Setup Desk',
      receiptNumber: '#NE4385734085',
      leavingLocation: 'France',
      arrivalLocation: 'German',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(150),
        child: Hero(
          tag: 'searchReceipt',
          child: SearchReceiptAppBar(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20),
          child: Column(
            children: [
              Container(
                height: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      blurRadius: 5.0,
                      spreadRadius: 0, //New
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14.0,
                    vertical: 20,
                  ),
                  child: LiveList(
                    itemCount: receiptNumbers.length,
                    showItemInterval: const Duration(milliseconds: 100),
                    showItemDuration: const Duration(milliseconds: 350),
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(),
                    itemBuilder: (_, index, animation) {
                      return FadeTransition(
                        opacity: Tween<double>(
                          begin: 0,
                          end: 1,
                        ).animate(animation),
                        child: SlideTransition(
                          position: Tween<Offset>(
                            begin: const Offset(0, -0.1),
                            end: Offset.zero,
                          ).animate(animation),
                          child: ReceiptNumberWidget(
                            productName: receiptNumbers[index].productName,
                            receiptNumber: receiptNumbers[index].receiptNumber,
                            leavingLocation:
                                receiptNumbers[index].leavingLocation,
                            arrivalLocation:
                                receiptNumbers[index].arrivalLocation,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
