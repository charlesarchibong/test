import 'package:flutter/material.dart';
import 'package:interview_test_app/src/features/shipment/widgets/shipment_widget.dart';

class PendingOrderShipmentsScreen extends StatefulWidget {
  const PendingOrderShipmentsScreen({Key? key}) : super(key: key);

  @override
  State<PendingOrderShipmentsScreen> createState() =>
      _PendingOrderShipmentsScreenState();
}

class _PendingOrderShipmentsScreenState
    extends State<PendingOrderShipmentsScreen> {
  @override
  Widget build(BuildContext context) {
    const deepBlueColor = Color(0xff001a33);
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              'Shipments',
              style: TextStyle(
                color: deepBlueColor,
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ShipmentWidget(
              icon: Icons.access_time_outlined,
              shipmentStatus: 'pending',
              statusColor: Colors.orange,
              deliveryDetails:
                  'Your delivery, #NEJ20089934122231 from Atlanta is arriving today!',
              price: r'$650',
            ),
            ShipmentWidget(
              icon: Icons.access_time_outlined,
              shipmentStatus: 'pending',
              statusColor: Colors.orange,
              deliveryDetails:
                  'Your delivery, #NEJ20089934122231 from Atlanta is arriving today!',
              price: r'$650',
            ),
          ],
        ),
      ),
    );
  }
}
