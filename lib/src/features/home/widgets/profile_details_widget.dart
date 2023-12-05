import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interview_test_app/src/features/home/screens/search_receipt_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class ProfileDetailsWidget extends StatefulWidget {
  const ProfileDetailsWidget({Key? key}) : super(key: key);

  @override
  State<ProfileDetailsWidget> createState() => _ProfileDetailsWidgetState();
}

class _ProfileDetailsWidgetState extends State<ProfileDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 25, // Image radius
                        backgroundImage:
                            AssetImage('assets/images/profile_picture.jpeg'),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                CupertinoIcons.location_fill,
                                size: 16,
                                color: Colors.white.withOpacity(0.7),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                'Your location',
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.7),
                                    fontSize: 16),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          const Row(
                            children: [
                              Text(
                                'Wertheimer, Illinois',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17.5,
                                    fontWeight: FontWeight.w500),
                              ),
                              Icon(
                                Icons.expand_more,
                                size: 24,
                                color: Colors.white,
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.notifications_none,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  PersistentNavBarNavigator.pushNewScreen(
                    context,
                    screen: const SearchReceiptScreen(),
                    withNavBar: false,
                    pageTransitionAnimation: PageTransitionAnimation.cupertino,
                  );
                },
                child: Hero(
                  tag: 'searchReceipt',
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: Colors.white),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(right: 8.0, top: 8, bottom: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 16.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.search,
                                  color: Colors.deepPurple,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Material(
                                  child: Text(
                                    'Enter the receipt number ...',
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.orange,
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Icon(
                                Icons.splitscreen_rounded,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
