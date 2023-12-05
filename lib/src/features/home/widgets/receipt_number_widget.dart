import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:interview_test_app/src/constants/ui_helper.dart';

class ReceiptNumberWidget extends StatelessWidget {
  final String productName;
  final String receiptNumber;
  final String leavingLocation;
  final String arrivalLocation;

  const ReceiptNumberWidget({
    required this.productName,
    required this.receiptNumber,
    required this.leavingLocation,
    required this.arrivalLocation,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const deepBlueColor = Color(0xff001a33);
    final uiHelper = UiHelper(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.deepPurple,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/icons/delivery_box_icon.png',
                height: 30,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  productName,
                  style: const TextStyle(
                    color: deepBlueColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: uiHelper.getMappedWidth(145),
                      height: uiHelper.getMappedHeight(20),
                      child: AutoSizeText(
                        receiptNumber,
                        style: const TextStyle(
                            fontSize: 15,
                            color: Colors.black45,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Container(
                      height: uiHelper.getMappedHeight(6),
                      width: uiHelper.getMappedWidth(6),
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(
                      width: uiHelper.getMappedWidth(4),
                    ),
                    SizedBox(
                      width: uiHelper.getMappedWidth(
                        (leavingLocation.length >= 6) ? 70 : 40,
                      ),
                      height: uiHelper.getMappedHeight(20),
                      child: AutoSizeText(
                        leavingLocation,
                        style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black45,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      height: uiHelper.getMappedHeight(20),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.grey,
                        size: uiHelper.getMappedHeight(20),
                      ),
                    ),
                    SizedBox(
                      width: uiHelper.getMappedWidth(
                        (arrivalLocation.length >= 6) ? 70 : 40,
                      ),
                      height: uiHelper.getMappedHeight(20),
                      child: AutoSizeText(
                        arrivalLocation,
                        style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black45,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ReceiptNumberClass {
  const ReceiptNumberClass({
    required this.productName,
    required this.receiptNumber,
    required this.leavingLocation,
    required this.arrivalLocation,
  });

  final String productName;
  final String receiptNumber;
  final String leavingLocation;
  final String arrivalLocation;
}
