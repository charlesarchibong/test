import 'package:flutter/material.dart';
import 'package:interview_test_app/src/features/shipment/widgets/shipment_widget.dart';

class AllShipmentsScreen extends StatefulWidget {
  const AllShipmentsScreen({Key? key}) : super(key: key);

  @override
  State<AllShipmentsScreen> createState() => _AllShipmentsScreenState();
}

class _AllShipmentsScreenState extends State<AllShipmentsScreen> {
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
              icon: Icons.cached,
              shipmentStatus: 'in-progress',
              statusColor: Colors.green,
              deliveryDetails:
                  'Your delivery, #NEJ20089934122231 from Atlanta is arriving today!',
              price: r'$1400',
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
            ShipmentWidget(
              icon: Icons.downloading_rounded,
              shipmentStatus: 'loading',
              statusColor: Colors.blue,
              deliveryDetails:
                  'Your delivery, #NEJ20089934122231 from Atlanta is arriving today!',
              price: r'$230',
            ),
            ShipmentWidget(
              icon: Icons.downloading_rounded,
              shipmentStatus: 'loading',
              statusColor: Colors.blue,
              deliveryDetails:
                  'Your delivery, #NEJ20089934122231 from Atlanta is arriving today!',
              price: r'$230',
            ),
            ShipmentWidget(
              icon: Icons.cached,
              shipmentStatus: 'in-progress',
              statusColor: Colors.green,
              deliveryDetails:
                  'Your delivery, #NEJ20089934122231 from Atlanta is arriving today!',
              price: r'$370',
            ),
            ShipmentWidget(
              icon: Icons.cached,
              shipmentStatus: 'in-progress',
              statusColor: Colors.green,
              deliveryDetails:
                  'Your delivery, #NEJ20089934122231 from Atlanta is arriving today!',
              price: r'$370',
            ),
          ],
        ),
      ),
    );
  }
}
