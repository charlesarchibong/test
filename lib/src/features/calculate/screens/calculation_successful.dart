import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:interview_test_app/src/constants/bottom_nav_bar.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class CalculationSuccessful extends StatefulWidget {
  const CalculationSuccessful({Key? key}) : super(key: key);

  @override
  State<CalculationSuccessful> createState() => _CalculationSuccessfulState();
}

class _CalculationSuccessfulState extends State<CalculationSuccessful> {
  int currentNumber = 20;
  final random = Random();
  int shuffleCount = 0;

  void _startRandomNumberGeneration() {
    Timer.periodic(const Duration(milliseconds: 50), (timer) {
      int randomNumber = random.nextInt(1441) + 20;
      setState(() {
        currentNumber = randomNumber;
      });
      if (currentNumber == 1460 || shuffleCount == 7) {
        timer.cancel();
      }
      shuffleCount++;
    });
  }

  @override
  void initState() {
    super.initState();
    _startRandomNumberGeneration();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'MoveMate',
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                width: 7,
              ),
              Icon(
                Icons.fire_truck_sharp,
                color: Colors.orange,
                size: 35,
              ),
            ],
          ),
          const SizedBox(
            height: 60,
          ),
          Image.asset(
            "assets/images/delivery_box.png",
            height: 150,
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            'Total Estimated Amount',
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
           AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            child:  Text(
              '\$$currentNumber USD',
              style:const TextStyle(
                color: Colors.green,
                fontSize: 25,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'This amount is estimated. It will vary\nif you change location or weight.',
            style: TextStyle(
              color: Colors.black45,
              fontSize: 15,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40.0, left: 20, right: 20),
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
                      screen: const BottomNavBar(),
                      pageTransitionAnimation:
                          PageTransitionAnimation.cupertino,
                    );
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Back to home',
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
    );
  }
}
