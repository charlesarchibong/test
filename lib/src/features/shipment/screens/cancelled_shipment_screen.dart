import 'package:flutter/material.dart';

class CancelledShipmentScreen extends StatelessWidget {
  const CancelledShipmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/cancel_shipment.png',
            height: 250,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'You have no cancelled shipments...',
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
