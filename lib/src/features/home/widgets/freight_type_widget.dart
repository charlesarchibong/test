import 'package:flutter/material.dart';

class FreightTypeWidget extends StatelessWidget {
  final double? top;
  final double? bottom;
  final double? right;
  final String title;
  final String subtitle;
  final String image;

  const FreightTypeWidget({
    required this.title,
    required this.subtitle,
    required this.image,
    this.top,
    this.bottom,
    this.right,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const deepBlueColor = Color(0xff001a33);
    return Stack(
      children: [
        Container(
          height: 220,
          width: 170,
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, right: 30.0, top: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: deepBlueColor,
                        fontSize: 17,
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      subtitle,
                      style: const TextStyle(
                        color: Colors.black45,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: top,
          right: right,
          left: 10,
          bottom: bottom,
          child: Image.asset(
            image,
            width: 400,
            fit: BoxFit.fitWidth,
          ),
        )
      ],
    );
  }
}
