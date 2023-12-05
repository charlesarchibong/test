import 'package:flutter/material.dart';
import 'package:interview_test_app/src/constants/bottom_nav_bar.dart';
import 'package:interview_test_app/src/features/shipment/screens/all_shipments_screen.dart';
import 'package:interview_test_app/src/features/shipment/screens/cancelled_shipment_screen.dart';
import 'package:interview_test_app/src/features/shipment/screens/completed_shipment_screen.dart';
import 'package:interview_test_app/src/features/shipment/screens/in_progress_shipment_screen.dart';
import 'package:interview_test_app/src/features/shipment/screens/pending_order_shipment_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class ShipmentHistoryScreen extends StatefulWidget {
  final bool? hideStatus;
  const ShipmentHistoryScreen({this.hideStatus, Key? key}) : super(key: key);

  @override
  State<ShipmentHistoryScreen> createState() => _ShipmentHistoryScreenState();
}

class _ShipmentHistoryScreenState extends State<ShipmentHistoryScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          leading: GestureDetector(
            onTap: () {
              PersistentNavBarNavigator.pushNewScreen(
                context,
                screen: const BottomNavBar(),
                withNavBar: false,
              );
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.deepPurple,
          title: const Text("Shipment History"),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child: SizedBox(
              height: 48.0,
              child: DefaultTabController(
                length: 5,
                animationDuration: const Duration(milliseconds: 500),
                child: TabBar(
                  tabAlignment: TabAlignment.start,
                  controller: _tabController,
                  isScrollable: true,
                  indicatorWeight: 2,
                  indicatorColor: Colors.orange,
                  indicatorSize: TabBarIndicatorSize.tab,
                  unselectedLabelColor: Colors.white.withOpacity(0.5),
                  unselectedLabelStyle: const TextStyle(
                    fontSize: 18,
                  ),
                  indicator: const UnderlineTabIndicator(
                    borderSide: BorderSide(
                      color: Colors.orange,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(6),
                      topRight: Radius.circular(6),
                    ),
                  ),
                  labelColor: Colors.orange,
                  labelStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  tabs: [
                    _tab(text: "All", number: "12", width: 70),
                    _tab(text: "Completed", number: "0", width: 130),
                    _tab(text: "In progress", number: "3", width: 140),
                    _tab(text: "Pending order", number: "4", width: 170),
                    _tab(text: "Cancelled", number: "", width: 120),
                  ],
                ),
              ),
            ),
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  AllShipmentsScreen(),
                  CompletedShipmentScreen(),
                  InProgressShipmentsScreen(),
                  PendingOrderShipmentsScreen(),
                  CancelledShipmentScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _tab({
  required String text,
  required String number,
  required double width,
}) {
  return Container(
    height: 22,
    margin: const EdgeInsets.all(10),
    width: width,
    child: Row(
      children: [
        Tab(
          text: text,
        ),
        if (number.isNotEmpty) ...[
          const SizedBox(
            width: 6,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white.withOpacity(0.2),
            ),
            child: Text(
              number,
              style: TextStyle(
                color: Colors.white.withOpacity(0.5),
                fontSize: 16,
              ),
            ),
          ),
        ],
      ],
    ),
  );
}
