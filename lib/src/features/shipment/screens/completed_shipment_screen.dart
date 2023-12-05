import 'package:flutter/material.dart';

class CompletedShipmentScreen extends StatelessWidget {
  const CompletedShipmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/completed_shipment.png',
            height: 250,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'You have no completed shipments but best believe that would change soon as your shipments are arriving soon.',
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
