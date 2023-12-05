import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:interview_test_app/src/features/home/widgets/freight_type_widget.dart';
import 'package:interview_test_app/src/features/home/widgets/profile_details_widget.dart';
import 'package:interview_test_app/src/features/home/widgets/sender_or_receiver_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = PageController();
  final deepBlueColor = const Color(0xff001a33);

  final widgetList = [
    const FreightTypeWidget(
      title: 'Ocean freight',
      subtitle: 'International',
      image: 'assets/images/ship3.png',
      top: 100,
      right: -100,
      bottom: 10,
    ),
    const FreightTypeWidget(
      title: 'Cargo freight',
      subtitle: 'Reliable',
      image: 'assets/images/delivery_truck.png',
      top: 30,
      right: -100,
      bottom: 10,
    ),
    const FreightTypeWidget(
      title: 'Air freight',
      subtitle: 'International',
      image: 'assets/images/airplane.png',
      top: 70,
      right: -60,
      bottom: 0,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(150),
        child: ProfileDetailsWidget(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Tracking',
                    style: TextStyle(
                      color: deepBlueColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
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
                      padding: const EdgeInsets.only(
                        left: 20.0,
                        right: 20.0,
                        top: 20.0,
                        bottom: 10.0,
                      ),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Shipment Number',
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    'NEJ20089934122231',
                                    style: TextStyle(
                                        color: deepBlueColor,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              Image.asset(
                                'assets/images/pickup-truck.png',
                                height: 40,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          const Divider(),
                          const SizedBox(
                            height: 6,
                          ),
                          const SenderOrReceiverWidget(
                            isSender: true,
                            title: 'Sender',
                            location: 'Atlanta, 5243',
                            time: '2 days - 3 days',
                          ),
                          const SenderOrReceiverWidget(
                            title: 'Receiver',
                            location: 'Chicago, 6342',
                            status: 'Waiting to collect',
                            isLastWidget: true,
                          ),
                          const Divider(),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add,
                                color: Colors.orange,
                              ),
                              Text(
                                'Add Stop',
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Available Vehicles',
                    style: TextStyle(
                      color: deepBlueColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: SizedBox(
                height: 220,
                width: double.infinity,
                child: LiveList(
                  scrollDirection: Axis.horizontal,
                  controller: controller,
                  itemCount: 3,
                  reAnimateOnVisibility: true,
                  separatorBuilder: (_, index) => const SizedBox(
                    width: 14,
                  ),
                  itemBuilder: (_, index, animation) {
                    return FadeTransition(
                      opacity: Tween<double>(
                        begin: 0,
                        end: 1,
                      ).animate(animation),
                      child: SlideTransition(
                        position: Tween<Offset>(
                          begin: Offset.zero,
                          end:  const Offset(-0.1, 0),
                        ).animate(animation),
                        child: widgetList[index],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
