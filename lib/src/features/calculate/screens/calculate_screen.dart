import 'package:flutter/material.dart';
import 'package:interview_test_app/src/constants/bottom_nav_bar.dart';
import 'package:interview_test_app/src/features/calculate/screens/calculation_successful.dart';
import 'package:interview_test_app/src/features/calculate/widgets/category_widget.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class CalculateScreen extends StatefulWidget {
  const CalculateScreen({Key? key}) : super(key: key);

  @override
  State<CalculateScreen> createState() => _CalculateScreenState();
}

class _CalculateScreenState extends State<CalculateScreen> {
  @override
  Widget build(BuildContext context) {
    const deepBlueColor = Color(0xff001a33);
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
        title: const Text("Calculate"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Destination',
                style: TextStyle(
                  color: deepBlueColor,
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey.withOpacity(0.1),
                        ),
                        child: Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 16.0),
                              child: Icon(
                                Icons.outbox,
                                color: Colors.grey,
                                size: 30,
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Container(
                              height: 35,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 0.5,
                                    color: Colors.grey.withOpacity(0.5)),
                              ),
                            ),
                            Expanded(
                              child: TextFormField(
                                cursorColor: deepBlueColor,
                                style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500),
                                decoration: const InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                  hintText: 'Sender Location',
                                  hintStyle: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black45,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey.withOpacity(0.1),
                        ),
                        child: Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 16.0),
                              child: Icon(
                                Icons.move_to_inbox,
                                color: Colors.grey,
                                size: 30,
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Container(
                              height: 35,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 0.5,
                                    color: Colors.grey.withOpacity(0.5)),
                              ),
                            ),
                            Expanded(
                              child: TextFormField(
                                cursorColor: deepBlueColor,
                                style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500),
                                decoration: const InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                  hintText: 'Receiver Location',
                                  hintStyle: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black45,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey.withOpacity(0.1),
                        ),
                        child: Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 16.0),
                              child: Icon(
                                Icons.monitor_weight_outlined,
                                color: Colors.grey,
                                size: 30,
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Container(
                              height: 35,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 0.5,
                                    color: Colors.grey.withOpacity(0.5)),
                              ),
                            ),
                            Expanded(
                              child: TextFormField(
                                cursorColor: deepBlueColor,
                                style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500),
                                decoration: const InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                  hintText: 'Approx weight',
                                  hintStyle: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black45,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Packaging',
                style: TextStyle(
                  color: deepBlueColor,
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              const Text(
                'What are you sending?',
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/delivery_box.png",
                            height: 30,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 30,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 0.5,
                                  color: Colors.grey.withOpacity(0.5)),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Box',
                            style: TextStyle(
                              color: deepBlueColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.expand_more,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Categories',
                style: TextStyle(
                  color: deepBlueColor,
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              const Text(
                'What are you sending?',
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  CategoryWidget(
                    category: 'Documents',
                  ),
                  CategoryWidget(
                    category: 'Glass',
                  ),
                  CategoryWidget(
                    category: 'Liquid',
                  ),
                  CategoryWidget(
                    category: 'Food',
                  ),
                  CategoryWidget(
                    category: 'Electronic',
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CategoryWidget(
                    category: 'Product',
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CategoryWidget(
                    category: 'Others',
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 40.0),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0)),
                      ),
                      onPressed: () {
                        PersistentNavBarNavigator.pushNewScreen(
                          context,
                          screen: const CalculationSuccessful(),
                          withNavBar: false,
                          pageTransitionAnimation:
                              PageTransitionAnimation.cupertino,
                        );
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Calculate',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
