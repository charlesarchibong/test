import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:interview_test_app/src/features/shipment/widgets/shipment_widget.dart';

class AllShipmentsScreen extends StatefulWidget {
  const AllShipmentsScreen({Key? key}) : super(key: key);

  @override
  State<AllShipmentsScreen> createState() => _AllShipmentsScreenState();
}

class _AllShipmentsScreenState extends State<AllShipmentsScreen> {
  final shipments = [
    const ShipmentWidget(
      icon: Icons.cached,
      shipmentStatus: 'in-progress',
      statusColor: Colors.green,
      deliveryDetails:
          'Your delivery, #NEJ20089934122231 from Atlanta is arriving today!',
      price: r'$1400',
    ),
    const ShipmentWidget(
      icon: Icons.access_time_outlined,
      shipmentStatus: 'pending',
      statusColor: Colors.orange,
      deliveryDetails:
          'Your delivery, #NEJ20089934122231 from Atlanta is arriving today!',
      price: r'$650',
    ),
    const ShipmentWidget(
      icon: Icons.access_time_outlined,
      shipmentStatus: 'pending',
      statusColor: Colors.orange,
      deliveryDetails:
          'Your delivery, #NEJ20089934122231 from Atlanta is arriving today!',
      price: r'$650',
    ),
    const ShipmentWidget(
      icon: Icons.downloading_rounded,
      shipmentStatus: 'loading',
      statusColor: Colors.blue,
      deliveryDetails:
          'Your delivery, #NEJ20089934122231 from Atlanta is arriving today!',
      price: r'$230',
    ),
    const ShipmentWidget(
      icon: Icons.downloading_rounded,
      shipmentStatus: 'loading',
      statusColor: Colors.blue,
      deliveryDetails:
          'Your delivery, #NEJ20089934122231 from Atlanta is arriving today!',
      price: r'$230',
    ),
    const ShipmentWidget(
      icon: Icons.cached,
      shipmentStatus: 'in-progress',
      statusColor: Colors.green,
      deliveryDetails:
          'Your delivery, #NEJ20089934122231 from Atlanta is arriving today!',
      price: r'$370',
    ),
    const ShipmentWidget(
      icon: Icons.cached,
      shipmentStatus: 'in-progress',
      statusColor: Colors.green,
      deliveryDetails:
          'Your delivery, #NEJ20089934122231 from Atlanta is arriving today!',
      price: r'$370',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    const deepBlueColor = Color(0xff001a33);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Shipments',
              style: TextStyle(
                color: deepBlueColor,
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            LiveList(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: shipments.length,
              showItemInterval: const Duration(milliseconds: 100),
              showItemDuration: const Duration(milliseconds: 350),
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
                    child: shipments[index],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
