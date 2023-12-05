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
      receiptNumber: '#NE43857340857904',
      leavingLocation: 'Paris',
      arrivalLocation: 'Morocco',
    ),
    ReceiptNumberClass(
      productName: 'Summer Linen Jacket',
      receiptNumber: '#NEJ20089934122231',
      leavingLocation: 'Barcelona',
      arrivalLocation: 'Paris',
    ),
    ReceiptNumberClass(
      productName: 'Tapered-fit jeans AW',
      receiptNumber: '#NEJ35870264978659',
      leavingLocation: 'Colombia',
      arrivalLocation: 'Morocco',
    ),
    ReceiptNumberClass(
      productName: 'Slim fit jeans AW',
      receiptNumber: '#NEJ35870264978659',
      leavingLocation: 'Bogota',
      arrivalLocation: 'Dhaka',
    ),
    ReceiptNumberClass(
      productName: 'Office Setup Desk',
      receiptNumber: '#NEJ23481570754963',
      leavingLocation: 'France',
      arrivalLocation: 'German',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(150),
        child: SearchReceiptAppBar(),
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
                    child: ListView.separated(
                        itemCount: receiptNumbers.length,
                        separatorBuilder: (BuildContext context, int index) =>
                            const Divider(),
                        itemBuilder: (BuildContext context, int index) {
                          return ReceiptNumberWidget(
                            productName: receiptNumbers[index].productName,
                            receiptNumber: receiptNumbers[index].receiptNumber,
                            leavingLocation:
                                receiptNumbers[index].leavingLocation,
                            arrivalLocation:
                                receiptNumbers[index].arrivalLocation,
                          );
                        })),
              )
            ],
          ),
        ),
      ),
    );
  }
}
